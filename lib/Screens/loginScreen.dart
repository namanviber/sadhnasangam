import 'package:flutter/material.dart';

import '../Widgets/authbutton.dart';
import '../Widgets/textfield.dart';
import 'homeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Email and Password Controllers
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  //Form State Keys
  final _formKey = GlobalKey<FormState>();

  //LogIn Function

  Future log_in() async {
    final isvalid = _formKey.currentState!.validate();
    // if (isvalid) {
    //   try {
    //     // FirebaseAuth.instance.signInWithEmailAndPassword(
    //     //     email: _email.text.trim(), password: _password.text.trim());
    //
    //   } on FirebaseAuthException catch (e) {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(
    //         content: Text("Email or Password Mismatched "),
    //         duration: Duration(seconds: 3),
    //       ),
    //     );
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              FieldText(fieldcontroller: email),
              const SizedBox(height: 20),
              FieldText(fieldcontroller: pass, passfield: true),
              const SizedBox(height: 20),
              ButtonAuth(
                  title: "Login",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // log_in();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
