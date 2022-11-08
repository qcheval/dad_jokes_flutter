import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future configureInjection() async {
  $initGetIt(getIt, environment: Environment.dev);
}
