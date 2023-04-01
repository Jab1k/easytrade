import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildUsername(),
            SizedBox(height: 20),
            _buildPassword(),
            SizedBox(height: 20),
            _buildRememberMe(),
            SizedBox(height: 20),
            TextButton(
              child: Text(
                'LOGIN',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUsername() {
    return TextFormField(
      controller: _usernameController,
      decoration: InputDecoration(
        labelText: 'Username',
      ),
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      controller: _passwordController,
      decoration: InputDecoration(
        labelText: 'Password',
      ),
      obscureText: true,
    );
  }

  Widget _buildRememberMe() {
    return CheckboxListTile(
      title: Text("Remember me"),
      value: _rememberMe,
      onChanged: (newValue) {
        setState(() {
          _rememberMe = newValue!;
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
