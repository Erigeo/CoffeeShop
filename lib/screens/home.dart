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

  void _login() {
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
                    const SizedBox(height: 20),
                    Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                              onSaved: (value) => _email = value,
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                labelText: 'E-mail',
                                labelStyle: TextStyle(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                              ),
                            ),
                            TextFormField(
                              onSaved: (value) => _password = value,
                              decoration:
                                  const InputDecoration(labelText: 'Password'),
                              obscureText: true,
                            ),
                            ElevatedButton(
                              onPressed: _login,
                              child: const Text('Entrar'),
                            ),
                          ],
                        ))
                  ]),
            )));
  }
}
