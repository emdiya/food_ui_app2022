import 'package:flutter/material.dart';
import 'package:testapp/pages/layout_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final username = TextEditingController();
  final password = TextEditingController();
  bool validateUsername = false;
  bool validatePassword = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to"),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(0),
            child: Image.asset(
              "assets/logo/fast-food-logo-emblem.png",
              height: 180,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              //width: size.width * 0.8,
              height: 60,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(29),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    errorText: validateUsername ? "Email can`t be null" : null,
                    border: InputBorder.none,
                    icon: const Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                    labelText: 'Username'),
                controller: username,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: size.width * 0.8,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(29),
              ),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    errorText:
                        validatePassword ? "Password can`t be null" : null,
                    border: InputBorder.none,
                    icon: const Icon(
                      Icons.verified_user,
                      color: Colors.blue,
                    ),
                    suffixIcon: const Icon(Icons.remove_red_eye),
                    labelText: 'Password'),
                controller: password,
              ),
            ),
          ),
          TextButton(
            child: const Text("Forgot Password?",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 80, left: 80, top: 20),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  username.text.isEmpty
                      ? validateUsername = true
                      : validateUsername = false;
                  password.text.isEmpty
                      ? validatePassword = true
                      : validatePassword = false;

                  if (username.text == 'emdiya' && password.text == 'admin') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LayoutScreen(),
                      ),
                    );
                  }
                });
              },
              child: Container(
                width: 20,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue.shade400,
                      Colors.lightBlue.shade400,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(5, 5),
                      blurRadius: 10,
                    )
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Row(children: const <Widget>[
              Expanded(
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Text(" OR "),
              Expanded(
                child: Divider(
                  color: Colors.grey,
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60, left: 60, top: 20),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.greenAccent.shade400,
                      Colors.greenAccent.shade700,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(5, 5),
                      blurRadius: 10,
                    )
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Create New Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
