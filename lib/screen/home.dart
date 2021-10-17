import 'package:flutter/material.dart';
import 'package:flutterwork/screen/login.dart';
import 'package:flutterwork/screen/register.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deachsawat"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: Icon(Icons.login),
                label: Text("Login", style: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: Icon(Icons.add),
                label: Text("Register", style: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RegisterScreen();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
