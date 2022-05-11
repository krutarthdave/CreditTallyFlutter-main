import 'core/domain/repositories/counter_register_repository.dart';
import 'core/infra/repositories/counter_register_repository_isar.dart';
import 'home_page.dart';
import 'pages/register_list/register_list_page.dart';
import 'pages/register_list/register_list_store.dart';
import 'shared/routes.dart';

class AppModule extends Module {
  List<Bind> get binds => [
        Bind.singleton<CounterRegisterRepository>(
          (i) => CounterRegisterRepositoryIsar(),
        ),
      ];

  final List<ModularRoute> routes = [
    ModuleRoute(
      AppRoutes.DEFAULT.route,
      module: SplashModule(),
      transition: TransitionType.fadeIn,
    ),
    ChildRoute(
      AppRoutes.HOME.route,
      child: (context, args) => const HomePage(
        title: 'CreditFlow App',
      ),
    ),
    ChildRoute(
      AppRoutes.REGISTER_LIST.route,
      child: (context, args) => RegisterListPage(
        store: RegisterListStore(),
        fromDate: args.data,
      ),
    ),
  ];
}

class TransitionType {
  static var fadeIn;
}

class Module {}

class SplashModule {}

ModuleRoute(String route, {module, transition}) {}

class ModularRoute {}

class Bind {
  static singleton(CounterRegisterRepositoryIsar Function(int) param0) {}
}

class ChildRoute {
  ChildRoute(String route, {RegisterListPage Function(context, args)? child});
}

class context {}

class args {
  var data;
}
