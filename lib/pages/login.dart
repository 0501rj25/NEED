import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, top: 110),
              child: const Text(
                "Welcome\nBack...",
                style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 40,
                    fontWeight: FontWeight.w900),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.45,
                    right: 20,
                    left: 20),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Email",
                        labelText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Password",
                        labelText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 20, top: 50)),
                    Row(
                      children: [
                        const Text(
                          "Sign in",
                          style: TextStyle(
                              color: Color(0xff4c505b),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        const Padding(padding: EdgeInsets.only(right: 210)),
                        CircleAvatar(
                          backgroundColor: const Color(0xff4c505b),
                          radius: 30,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'home');
                            },
                            icon: const Icon(Icons.arrow_forward, size: 30),
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 70),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'register');
                            },
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff4c505b),
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'forget');
                            },
                            child: const Text(
                              "Forgot Password",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff4c505b),
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
