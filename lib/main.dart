import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ensuring these vars are in the build method makes sure they get
    // reinstantiated when the ui is re painted!
    var leftDiceNumber = 1;
    var rightDiceNumber = 2;

    // remember dart is statically typed!
    // String name = 'Lou';
    // name = 5; //cannot reassign to another type
    // ! ^^^ this will throw an error!

    // what about just instantiation
    // ! check this out!!!!
    var a;
    a = 123;
    a = 'here is a string!!';
    // ! when JUST instantiated, the variable is dynamically typed!
    // the above code throws no errors!
    // you can also use the dynamic keyword!
    dynamic b;
    b = 123;
    b = 'here is another string!';

    // in general though its best to type your variables in dart

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Left button got pressed!');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Right button got pressed!');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
