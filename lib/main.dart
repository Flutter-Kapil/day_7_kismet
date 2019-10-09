import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData.dark(),
      home: KismetApp(),
    ));

class KismetApp extends StatefulWidget {
  @override
  _KismetAppState createState() => _KismetAppState();
}

// TODO: Step 15 - Run your app and see if it works as expected
class _KismetAppState extends State<KismetApp> {
  // TODO: Step 6 - Create a storyBrain object and use it to get story title, choice1 and choice 2 and show them on the app by using at appropriate locations

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/background.png"),
          fit: BoxFit.cover,
        )),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    'Story text will go here.',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    //Choice 1 made by user.
                    //TODO: Step 9 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user, do the same for choice2 button and pass number 2 in that case
                  },
                  color: Colors.red,
                  child: Text(
                    'Choice 1',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                //TODO: Step 14 - Use a Flutter Visibility Widget to wrap this FlatButton and set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: FlatButton(
                  onPressed: () {
                    //Choice 2 made by user.
                  },
                  color: Colors.blue,
                  child: Text(
                    'Choice 2',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
