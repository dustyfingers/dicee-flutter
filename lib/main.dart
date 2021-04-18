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

// just 'widget' part
// class DicePage extends StatelessWidget {
//   int leftDiceNumber = 1;
//   int rightDiceNumber = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 print('Left button got pressed!');
//               },
//               child: Image.asset('images/dice$leftDiceNumber.png'),
//             ),
//           ),
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 print('Right button got pressed!');
//               },
//               child: Image.asset('images/dice$rightDiceNumber.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// 'widget' part
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

// 'state' part
// can chage - is mutable
class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Left button got pressed!');
                setState(() {
                  leftDiceNumber = 6;
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Right button got pressed!');
                setState(() {
                  rightDiceNumber = 5;
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
