import 'dart:async';

import 'package:fitness/util/util.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import 'login.dart';
import 'register.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    customizeOverlay();

    Timer(Duration(milliseconds: 1500),
        () => Navigator.of(context).pushReplacementNamed(QueryPopup.route));

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
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
            SizedBox(height: 100),
            Icon(
              LineAwesomeIcons.camera_retro,
              color: Colors.white.withOpacity(0.2),
              size: 48,
            ),
            SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}

class QueryPopup extends StatelessWidget {
  static String route = '/query';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                spreadRadius: 5,
                color: Colors.white12,
              )
            ],
            color: Colors.blueGrey,
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text('Welcome',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .merge(TextStyle(color: Colors.white))),
                ),
                SizedBox(height: 30),
                OutlineButton(
                  borderSide: BorderSide(color: Colors.white54),
                  child: Text('Register',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .merge(TextStyle(color: Colors.white))),
                  onPressed: () =>
                      Navigator.of(context).pushNamed(Register.route),
                ),
                SizedBox(height: 10),
                OutlineButton(
                  borderSide: BorderSide(color: Colors.white54),
                  child: Text('Login',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .merge(TextStyle(color: Colors.white))),
                  onPressed: () => Navigator.of(context).pushNamed(Login.route),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
