import 'package:get/get.dart';

import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/auth_view.dart';
import '../modules/chamado/bindings/chamado_binding.dart';
import '../modules/chamado/views/chamado_add_view.dart';
import '../modules/chamado/views/chamado_edit_view.dart';
import '../modules/chamado/views/chamado_list_view.dart';
import '../modules/cliente/bindings/cliente_binding.dart';
import '../modules/cliente/views/cliente_add_view.dart';
import '../modules/cliente/views/cliente_edit_view.dart';
import '../modules/cliente/views/cliente_list_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/tecnico/bindings/tecnico_binding.dart';
import '../modules/tecnico/views/tecnico_add_view.dart';
import '../modules/tecnico/views/tecnico_edit_view.dart';
import '../modules/tecnico/views/tecnico_list_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => const AuthView(),
      binding: AuthBinding(),
    ),

    GetPage(
      name: _Paths.CLIENTE_LIST,
      page: () => const ClienteListView(),
      binding: ClienteBinding(),
    ),
    GetPage(
      name: _Paths.CLIENTE_EDIT,
      page: () => const ClienteEditView(),
      binding: ClienteBinding(),
    ),
    GetPage(
      name: _Paths.CLIENTE_ADD,
      page: () => const ClienteAddView(),
      binding: ClienteBinding(),
    ),

    GetPage(
      name: _Paths.TECNICO_LIST,
      page: () => const TecnicoListView(),
      binding: TecnicoBinding(),
    ),
    GetPage(
      name: _Paths.TECNICO_EDIT,
      page: () => const TecnicoEditView(),
      binding: TecnicoBinding(),
    ),
    GetPage(
      name: _Paths.TECNICO_ADD,
      page: () => const TecnicoAddView(),
      binding: TecnicoBinding(),
    ),

    GetPage(
      name: _Paths.CHAMADO_LIST,
      page: () => const ChamadoListView(),
      binding: ChamadoBinding(),
    ),
    GetPage(
      name: _Paths.CHAMADO_EDIT,
      page: () => const ChamadoEditView(),
      binding: ChamadoBinding(),
    ),
    GetPage(
      name: _Paths.CHAMADO_ADD,
      page: () => const ChamadoAddView(),
      binding: ChamadoBinding(),
    ),        
  ];
}
