import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/login.png'), // Replace 'your_image.png' with your image asset path
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),

          child :ElevatedButton(
          onPressed: () {
            final String email = 'a@a.com';
            final String password = 'ana121121';

            // Check if the entered email and password are valid
            if (email == 'a@a.com' && password == 'ana121121') {
              // Navigate to the next screen (NextPage)
              /*Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NextPage()),
              );*/
            } else {
              // Display a toast message for invalid credentials (in French)
              Fluttertoast.showToast(
                msg: 'Nom d\'utilisateur ou mot de passe invalide',
                backgroundColor: Colors.red,
                textColor: Colors.white,
              );
            }
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF6B76FF), // Set the background color to #6B76FF
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0), // Make it rounded
            ),
          ),
          child: Container(
            width: double.infinity, // Make the button full width
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: Text(
              'Connect',
              style: TextStyle(
                color: Colors.white, // Set the text color to white
                fontSize: 18.0,
              ),
            ),
          ),
        ),
        ),






      ],
        ),
      ),
    );
  }
}
