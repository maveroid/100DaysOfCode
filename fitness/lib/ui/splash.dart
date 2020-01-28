import 'package:fitness/util/util.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    customizeOverlay();

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
                          .display1
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
              AnimatedOpacity(
                duration: Duration(milliseconds: 1500),
                opacity: 1,
                child: InkWell(
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Enter',
                          style: Theme.of(context)
                              .textTheme
                              .headline
                              .merge(TextStyle(color: Colors.blueGrey))),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
