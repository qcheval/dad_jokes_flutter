# dad_jokes_flutter

## Let's read some dad jokes


![Project Icon](./dadjokes/assets/images/smile.png)


This project uses the open API [ICanHasDadJokes](https://icanhazdadjoke.com/api#search-for-dad-jokes) written and is maintained by Brett Langdon.

The logo is by Original by [User:East718](https://en.wikipedia.org/wiki/User:User:East718), SVG conversion: This vector image was created with Inkscape by Howcheng, and then manually edited by [Giro720](https://commons.wikimedia.org/wiki/User:Giro720). (Own work) [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0), via [Wikimedia Commons](https://commons.wikimedia.org/).


## Why this project?

This project aims to implement a simple, yet clear, example of BLoc/Clean architecture using flutter

This implementation *is not the truth*. It is only my vision of clean architecture using BLoc. Feel free to comment, enhance and make this code better.


# PROJECT ARCHITECTURE

## PRESENTATION LAYER

### PURPOSE

Presentation layer has for sole goal to display data, consume **domain layer** states and produce events when instructed by the user.
It must be as dumb as can be. One good rule of thumb is "if there is a **if** statement in this layer, there must be an issue". **If** statements imply business intelligence and therefore should only appear in deeper layers, such as **domain**

### Widgets

Widgets are the core of this layer. They organize the user interface. Connected to a **bloc**, which manage their **state**, they can update the user interface depending on which **state** is consumed.
Every user action will trigger an **event**, sent to the **bloc**.

Two main types of widgets are used in this layer. This type will induce if a **bloc** is needed : 

- Stateful Widget
	A stateful widget manages its state itself, therefore, no **bloc** is needed. Be careful when using such a widget as the business logic might be integrated in the presentation layer. There is only a few reasons to use stateful widgets, such as the need of animation controller for example. Try to simplify as much as possible this widget, to be able to use stateless widgets as children and prevent wrong dependencies between layers.

- Stateless Widget
	The main goal of **bloc** is to extract state management in another layer, giving the developer more freedom concerning unit testing, readability and code maintenance. As stated before, this allows to write the dumbest widget possible, reducing the chances of bugs and regression to a minimum. Also, it is important to thin the widgets to the minimal usage. What this means is, for example, if you have to implement a ListView, try to declare a stateless widget for your ListView and its builder, then another class for each different item that might be displayed in this list. Furthermore, if these items contain a complex widget, extract it to another class. The smaller, the better.

For example, given this widget taken straight from this project : 

```dart
Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 3,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  joke.text,
                  style: GoogleFonts.lato(fontSize: 18.sp),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                  child: Divider(thickness: 1)),
              Padding(
                  padding: EdgeInsets.all(16),
                  child: TextButton(
                    onPressed: () async {
                      await Share.share("${StringProvider.shareUrl}${joke.id}");
                    },
                    child: Row(
                      children: [
                        Icon(Icons.share),
                        SizedBox(width: 16),
                        Text(StringProvider.share)
                      ],
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        TextButton(
          style: TextButton.styleFrom(
              minimumSize: Size(90.w, 8.h),
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(buttonRadius))),
          onPressed: onClick,
          child: Text(
            title,
            style: GoogleFonts.lato(
                color: Colors.white, fontSize: buttonFontSize.sp),
          ),
        )
      ],
    );
```

It is far more clearer to write : 

```dart
Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        JokeCard(joke: joke),
        SizedBox(height: 10.h),
        CustomButton(title: StringProvider.getJoke, onClick: onClick)
      ],
    );
    
class JokeCard extends StatelessWidget {
  final JokeEntity joke;

  const JokeCard({super.key, required this.joke});
  
  @override
  Widget build(BuildContext context) {
  // build your widget 
  }
}

// Etc for CustomButton...
```
Once and again, try to keep in mind : **KISS** and **DRY**.


### Folder Tree

A good practice would be to create your folder tree as below : 

- **presentation**
	+ **core**
		* **common_widgets** // all the small widgets you might use everywhere, such as custom buttons
		* **providers** // why not a asset_provider class to get all the assets ? Same thing for strings
	+ **feature_a**
		* **widgets** // all the small widgets used only for this feature
		* **feature_a_widget.dart** // your main widget for this feature. A scaffold for example?

While it is recommanded not to use any **if** statement, we need a method to define our UI with our state. An interesting method, allowed by the usage of **freezed** in the state class definition, is to use map.
For exemple, on a state change received by the widget, we can write : 

```dart
state.map(
	initial: (initial) => _doSomethingInit(),
	success: (success) => _buildTheSuccessWidget(),
	error: (error) => _showAnError(),
	loading: (loading) => _showALoader());
```
This syntax allows readability and simple comprehension of the bloc logic. Each map element maps to a state in the class declaration detailed in the **application layer** section (see below). 


Concerning the events, and assuming that your top widget provides you a context containing the right bloc, you can declare an event this way : 

```dart
context // my BuildContext
        .read<DoSomethingBloc> // reference to bloc
        .add(const DosomethingBloc.myEvent()); // the event sent by the user interface
```


## APPLICATION LAYER

### PURPOSE

BLoc stands for Business Logic. As stated on the [developer's page](https://bloclibrary.dev/#/whybloc) : 
**Bloc makes it easy to separate presentation from business logic, making your code fast, easy to test, and reusable.**

Application layer's role is to consume presentation layer events, call domain layer's repositories interfaces if necessary and apply Business Rules before emitting a state accordingly. 

### EVENTS

Using **freezed**, it is quite easy to list all the possible events the presentation layer may send. Here is a simple example : 

```dart
@freezed
class ExampleEvent with _$ExampleEvent {
  const factory ExampleEvent.onSubmit() = OnSubmit; // An event without parameters
  const factory ExampleEvent.onSearch(SearchParameters searchParameters) = OnSearch; // An event with parameters
}
```

To make your events really explicit, remember to never pass simple types as parameters (int, double, String, etc...). It may take a little more time to implement a parameter class, but your fellow developers will thank you later.

### STATES

Remember the **DRY** concept? Don't repeat yourself. By respect to this statement, I decided to implement a single State class for this app. It accepts any type as *data* and can be used in any BLoc as long at it respects the following logic : 

- Initialisation State : the widget needs to be initialised
- Loading State : the widget sent an event and the preparation of the data may take a while
- Success State : data is ready to be displayed
- Error State : Something wen't wrong when loading the data

When declaring your Bloc, simply use UIState<MyType> to use this class. 

```dart
@freezed
class UIState<T> with _$UIState<T> {
  const factory UIState.initial() = Initial;

  const factory UIState.success(T data) = Success;

  const factory UIState.error(ValueFailure failure) = Error;

  const factory UIState.loading() = Loading;
}
```

### BLOCS

Here is the core of this layer. Consuming events and emitting state being the main role of the BloC, it also is allowed to apply business rules to our data. Most of your if/else statements will be written in this layer.

First of all, how to read an event?
Events will be mapped, just as states are mapped in the presentation layer. (thanks again, freezed)

Let's reuse the ExampleEvent declared before : 

```dart
MyBloc() : super(UIState.initial()) {
	on<ExampleEvent>((event, emit) async {
		await event.map(
			onSubmit: (_) async { // no parameters for this event -> _
				emit(Loading());
				// call repository to submit something
				emit(Success(someData));
			}, 
			onSearch: (onSearchEvent) async { // this event contains parameters
				emit(Loading());
				// call repository to submit something
				// You can use parameters with : onSearchEvent.searchParams
				emit(Success(someData));
			});
	}
}
  
```

### MODELS


### FAILURES

### REPOSITORIES INTERFACES

	

## DATA LAYER

### PURPOSE


### REPOSITORY IMPLEMENTATION

### DATASOURCES

### DTO

### MAPPER
