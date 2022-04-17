import 'package:flutter/material.dart';
import 'package:flutter_signin/my_button.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: _buildBotton(),
    );
  }

  Widget _buildBotton() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MyButton(
              image: Image.asset('images/glogo.png'),
              text: Text(
                'Login with Google',
                style: TextStyle(color: Colors.black87, fontSize: 15.0),
              ),
              color: Colors.white,
              radius: 4.0,
              onPressed: () {
                print("Google Login");
              }
          ),
          SizedBox(
            height: 10.0,
          ),
          MyButton(
              image: Image.asset('images/flogo.png'),
              text: Text(
                'Login with Facebook',
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              color: Color(0xFF334D92),
              radius: 4.0,
              onPressed: () {
                print("Facebook Login");
              }
          ),
          SizedBox(
            height: 10.0,
          ),
          MyButton(
              image: Icon(
                Icons.mail,
                color: Colors.white,
              ),
              text: Text(
                'Login with Email',
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              color: Colors.green,
              radius: 4.0,
              onPressed: () {
                print("Email Login");
              }
          ),
        ],
      ),
    );
  }
}