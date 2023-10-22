import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';


GetIt locator = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: false,
)
Future<void> initServiceLocator() async => locator;