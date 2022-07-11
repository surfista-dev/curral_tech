import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

int hexColor(String color) {
  String newColor = '0xff$color';
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  String snackBar = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(hexColor('#FAFAFA')),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset('images/logo_splash.png'),
              const SizedBox(height: 10),
              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white),
              ),
              const SizedBox(height: 10),
              TextField(
                onChanged: (text) {
                  password = text;
                },
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white),
              ),
              const SizedBox(height: 15),
              ElevatedButton.icon(
                onPressed: () {
                  if (email == 'test@gmail.com' && password == '123') {
                    const snackBar = SnackBar(content: Text('senha correta'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  } else {
                    const snackBar =
                        SnackBar(content: Text('senha ou email incorreto'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                label: const Text('ENTRAR'),
                icon: const Icon(Icons.save),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
