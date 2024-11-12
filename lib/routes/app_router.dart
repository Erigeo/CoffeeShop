import 'package:coffee_store/screens/home.dart';
import 'package:coffee_store/screens/register.dart';
import 'package:coffee_store/screens/user_home.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const Register(),
      ),
      GoRoute(
        path: '/user_home',
        builder: (context, state) => const UserHome(),
      ),
    ],
  );
}
