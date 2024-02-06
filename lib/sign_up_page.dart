import 'package:ecommerce_app/components/textfield.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width,
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: IntrinsicHeight(
          child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
            Text('Let\'s create an account for you'),
            SizedBox(
              height: 50,
            ),
            MyTextField(
                controller: emailController, hintText: 'Email', obscure: false),
            SizedBox(
              height: 25,
            ),
            MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscure: false),
            SizedBox(
              height: 25,
            ),
            MyTextField(
                controller: confirmPasswordController,
                hintText: 'Confirm your password',
                obscure: false),
            SizedBox(
              height: 25,
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(30)),
                height: 50,
                width: 360,
                child: Center(
                  child: Text('Sign up',
                      style: TextStyle(
                          fontFamily: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .fontFamily,
                          fontSize: 16,
                          color: Theme.of(context).backgroundColor,
                          fontWeight: FontWeight.w700)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey.shade400,
                  )),
                  Text(
                    'Or continue with',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey.shade400,
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SignInButton(Buttons.facebook, onPressed: () {}),
            SizedBox(
              height: 10,
            ),
            SignInButton(Buttons.google, onPressed: () {}),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign in instead!',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    )));
  }
}
