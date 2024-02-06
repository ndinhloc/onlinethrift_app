import 'package:ecommerce_app/components/textfield.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Center(
              child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 90),
          child: Text(
            'Online',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Text(
          'Thrift',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        SizedBox(
          height: 70,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, bottom: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Username/ Email',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
        ),
        MyTextField(
            controller: usernameController,
            hintText: 'address@gmail.com',
            obscure: false),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, bottom: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Password',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
        ),
        MyTextField(
            controller: passwordController, hintText: '••••••', obscure: true),
        Padding(
          padding: const EdgeInsets.only(right: 25.0, top: 10, bottom: 10),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot your password?',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
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
              child: Text('Sign in',
                  style: TextStyle(
                      fontFamily:
                          Theme.of(context).textTheme.displayMedium!.fontFamily,
                      fontSize: 16,
                      color: Theme.of(context).backgroundColor,
                      fontWeight: FontWeight.w700)),
            ),
          ),
        ),
        SizedBox(
          height: 10,
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
              Text('Don\'t have an account yet?'),
              SizedBox(
                width: 5,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Register now!',
                  style: TextStyle(
                      color: Colors.blueAccent, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
      ]))),
    );
  }
}
