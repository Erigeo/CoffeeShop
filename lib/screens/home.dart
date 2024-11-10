import 'package:coffee_store/components/login_card.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  String? _password;
  String? _email;

  void _login(String email, String password) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // add logica da api + navigate
      print('Email: $_email');
      print('Password: $_password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/coffeeSeedsBackground.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 100),
                    const Text(
                      'Coffee',
                      style: TextStyle(
                          fontSize: 72,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 248, 247, 247),
                          fontFamily: 'Chalkboard'),
                    ),
                    const Text(
                      'Shop',
                      style: TextStyle(
                          fontSize: 72,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 248, 247, 247),
                          fontFamily: 'Chalkboard'),
                    ),
                    const SizedBox(height: 50),
                    LoginCard(formKey: _formKey, onLogin: _login)
                  ]),
            )));
  }
}
