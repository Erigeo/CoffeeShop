import 'package:coffee_store/providers/coffe_provider.dart';
import 'package:coffee_store/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:coffee_store/routes/app_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => UserProvider()),
    ChangeNotifierProvider(create: (context) => CoffeProvider())
  ], child: const CoffeeApp()));
}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'Flutter Router Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
