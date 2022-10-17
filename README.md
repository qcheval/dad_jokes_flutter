# dad_jokes_flutter

## Let's read some dad jokes


![Project Icon](./assets/images/smile.png)


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

Presentation layer is composed of a few but important elements detailed below :

### WIDGETS AND SUBWIDGETS

Widgets are the core of this layer. They organize the user interface. Connected to a bloc, wich manage their state, they can update the interface depending of which state is consumed.
Every user action will trigger an event, sent to the bloc.

Two main types of widgets are used in this layer. This type will induce if a bloc is needed : 

- Stateful Widget
	A stateful widget manages its state itself, therefore, no bloc is needed. Be careful when using such a widget as the business logic might be integrated in the presentation layer. There is only a few reasons to use stateful widgets, such as the need of animation controller for example. Try to simplify as much as possible this widget, to be able to use stateless widgets as children and prevent wrong dependencies between layers.

- Stateless Widget
	The main goal of bloc is to extract state management in another layer, giving the developer more freedom concerning unit testing, readability and code maintenance. As started before, this allows to write the dumbest widget possible, reducing the chances of bugs and regression to a minimum. Also, it is important to thin the widgets to the minimal usage. What it means is, for example, if you have to implement a ListView, try to declare a stateless widget for your ListView and its builder, then another class for each different item that might be displayed in this list. Furthermore, if these items contain a complex widget, extract it to another class. The smaller, the better.

	A good practice would be to create your folder tree as below : 

	- presentation
		+ core
			* common_widgets // all the small widgets you might use everywhere, such as custom buttons
			* providers // why not a asset_provider class to get all the assets ? Same thing for strings
		+ feature_a
			* widgets // all the small widgets used only for this feature
			* feature_a_widget.dart // your main widget for this feature. A scaffold for example?


## APPLICATION LAYER

### PURPOSE


### BLOCS

### EVENTS

### STATES

### VIEWMODEL

### MAPPERS
	

## DOMAIN LAYER

### PURPOSE


### ENTITIES

### FAILURES

### REPOSITORIES INTERFACES

	

## DATA LAYER

### PURPOSE


### REPOSITORY IMPLEMENTATION

### DATASOURCES

### DTO

### MAPPER
