import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class CreateProfile extends StatefulWidget {
  static String route = '/createprofile';

  @override
  _CreateProfileState createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    bool male = true, female = false;

    List<DropdownMenuItem> items = [
      DropdownMenuItem(
        child: Text('Male',
            style: Theme.of(context)
                .textTheme
                .subtitle1
                .merge(TextStyle(color: Colors.white))),
      ),
      DropdownMenuItem(
        child: Text('Female',
            style: Theme.of(context)
                .textTheme
                .subtitle1
                .merge(TextStyle(color: Colors.white))),
      )
    ];

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              LineAwesomeIcons.level_down,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: Icon(
            LineAwesomeIcons.navicon,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        elevation: 0,
        title: Text('Create Profile'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
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
                          hintText: 'What is your name?',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .merge(TextStyle(color: Colors.white)),
                          labelText: 'Name',
                          labelStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .merge(TextStyle(color: Colors.white)),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        cursorColor: Colors.white,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintText: 'What is your age?',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .merge(TextStyle(color: Colors.white)),
                          labelText: 'Age',
                          labelStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .merge(TextStyle(color: Colors.white)),
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
                          hintText: 'How tall are you?',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .merge(TextStyle(color: Colors.white)),
                          labelText: 'Height',
                          labelStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .merge(TextStyle(color: Colors.white)),
                          suffix: Text(
                            'CM',
                            style: Theme.of(context).textTheme.subtitle1,
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
                          hintText: 'How much did you weigh?',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .merge(TextStyle(color: Colors.white)),
                          labelText: 'Weight',
                          labelStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .merge(TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              DropdownButton(
                items: items,
                onChanged: (index) {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
