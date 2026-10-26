import 'package:get/get.dart';
import 'package:login_app/pages/main_menu.dart';
import 'pages/confirm_registration_page.dart';
import 'pages/registration_page.dart';
import 'pages/list_makanan_page.dart';
import 'pages/detail_list_makanan_page.dart';

abstract class Routes {
  static const String registration = '/registration';
  static const String confirmRegistration = '/confirm_registration';
  static const String listMakanan = '/list_makanan';
  static const String detailMakanan = '/detail_makanan';
  static const String mainMenu = '/main_menu';

  static final List<GetPage> myPages = [
    GetPage(
      name: registration,
      page: () => RegistrationPage(),
    ),
    GetPage(
      name: confirmRegistration,
      page: () => ConfirmRegistrationPage(),
    ),
    GetPage(
      name: listMakanan,
      page: () => ListMakananPage(),
    ),
    GetPage(
      name: detailMakanan,
      page: () => DetailMakananPage(),
    ),
    GetPage(
      name: mainMenu,
      page: () => MainMenu(),
    )
  ];
}