import 'package:get/get.dart';
import 'pages/confirm_registration_page.dart';
import 'pages/registration_page.dart';

abstract class Routes {
  static const String registration = '/registration';
  static const String confirmRegistration = '/confirm_registration';

  static final List<GetPage> myPages = [
    GetPage(
      name: registration,
      page: () => RegistrationPage(),
    ),
    GetPage(
      name: confirmRegistration,
      page: () => ConfirmRegistrationPage(),
    ),
  ];
}