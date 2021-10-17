import 'package:flutter/material.dart';
import 'package:flutterwork/modell/profile.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();

  Profile profile = Profile('', '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("สร้างบัญชี"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email", style: TextStyle(fontSize: 20)),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (email) {
                        profile.email = email!;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("password", style: TextStyle(fontSize: 20)),
                    TextFormField(
                      obscureText: true,
                      onSaved: (password) {
                        profile.password = password!;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      child: ElevatedButton(
                        child: Text("ลงทะเบียน"),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
