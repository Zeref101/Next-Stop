import 'package:flutter/material.dart';
import 'package:next_stop/core/theme/app_pallet.dart';
import 'package:next_stop/screens/sign_up.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreen();
}

class _SignInScreen extends State<SignInScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleSubmit() {
    // Step 4: Print or use the input values
    print('Email: ${_emailController.text}');
    print('Password: ${_passwordController.text}');

    _usernameController.clear();
    _emailController.clear();
    _passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 48.0, left: 16.0, right: 16.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 32),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 16.0),
                        labelStyle: const TextStyle(
                            color: Pallet.primaryColor,
                            fontFamily: 'Poppins',
                            fontSize: 14.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide:
                                const BorderSide(color: Pallet.primaryColor))),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 16.0),
                        labelStyle: const TextStyle(
                            color: Pallet.primaryColor,
                            fontFamily: 'Poppins',
                            fontSize: 14.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide:
                                const BorderSide(color: Pallet.primaryColor))),

                    obscureText: true, // Hides the password
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _handleSubmit,
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              color: Pallet.onPrimaryColor,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Pallet.primaryColor),
                            overlayColor: WidgetStateProperty.all(
                                Pallet.onHoldButtonColor.withOpacity(0.5)),
                            padding: WidgetStateProperty.all(
                                EdgeInsets.symmetric(vertical: 16))),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, bottom: 54.0),
                child: SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: InkWell(
                      onLongPress: () {
                        // print("Long Pressed");
                      },
                      child: Material(
                        type: MaterialType
                            .transparency, // makes the button transparent
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // print("Google");
                          },
                          icon: Image.asset(
                            'assets/images/Google.png',
                            width: 30,
                            height: 30,
                          ),
                          label: const Text(
                            "Sign In with Google",
                            style:
                                TextStyle(fontSize: 14, fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    SizedBox(
                      width: 8,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(PageRouteBuilder(
                          pageBuilder: (context, animation,
                                  secondaryAnimation) =>
                              SignUpScreen(), // Replace SignUpScreen with the actual class of your sign-up screen
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var begin = Offset(1.0,
                                0.0); // Change begin offset for different animations
                            var end = Offset.zero;
                            var curve = Curves.ease;

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));
                            var offsetAnimation = animation.drive(tween);

                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                        ));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
