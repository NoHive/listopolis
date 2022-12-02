import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'configure_injection.config.dart';

final GetIt getIt = GetIt.instance;

// @injectableInit
// Future<void> configureInjection(String env) async{
//   await $initGetIt(getIt, environment: env);
// }
@InjectableInit()
Future<void> configureDependencies() async => await getIt.init();
//getIt.init();