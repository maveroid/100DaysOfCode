import 'dart:async';

import 'package:fitness/util/util.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import 'login.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    customizeOverlay();

    Timer(Duration(milliseconds: 1500),
        () => Navigator.of(context).pushNamed(Login.route));

    return Scaffold(
      extendBody: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
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
          )
        ],
      ),
    );
  }
}
