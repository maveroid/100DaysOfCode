import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Login extends StatefulWidget {
  static String route = '/login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlineButton(
                disabledBorderColor: Colors.white,
                onPressed: null,
                textColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('FITNESS APP',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .merge(TextStyle(color: Colors.white))),
                ),
              ),
              SizedBox(height: 50),
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextFormField(
                        cursorColor: Colors.white,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintText: 'Input email address',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .merge(TextStyle(color: Colors.white)),
                          labelText: 'Mail',
                          labelStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .merge(TextStyle(color: Colors.white)),
                          prefixIcon: Icon(
                            LineAwesomeIcons.male,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        cursorColor: Colors.white,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .merge(TextStyle(color: Colors.white)),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintText: 'Input your password',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .merge(TextStyle(color: Colors.white)),
                          labelText: 'Password',
                          labelStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .merge(TextStyle(color: Colors.white)),
                          prefixIcon: Icon(
                            LineAwesomeIcons.lock,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              OutlineButton(
                borderSide: BorderSide(color: Colors.white),
                child: Text('LOGIN',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .merge(TextStyle(color: Colors.white))),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
