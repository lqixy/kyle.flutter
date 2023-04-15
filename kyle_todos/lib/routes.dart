import 'package:get/get.dart';
import 'package:kyle_todos/screens/auth/login_screen.dart';
import 'package:kyle_todos/screens/auth/signup_screen.dart';
import 'package:kyle_todos/screens/home/home_screen.dart';

class GetRoutes {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';

  static List<GetPage> routes = [
    GetPage(name: login, page: () => LoginScreen()),
    GetPage(name: signup, page: () => SignupScreen()),
    GetPage(name: home, page: () => HomeScreen()),
  ];
}
