import 'package:flutter/material.dart';

void main() {
  runApp(const Ch());
}

class Ch extends StatefulWidget {
  const Ch({ Key? key }) : super(key: key);

  @override
  _ChState createState() => _ChState();
}

class _ChState extends State<Ch> {
  String greetings = "Click Here";
  Color bgColor = Colors.white;
  Color textColor = Colors.black;
  var time = DateTime.now();

  void fun()
  {
    if(time.hour>=4 && time.hour<11)
    {
      greetings = "Good Morning\nTime to wake up";
      bgColor = Colors.green;
      textColor = Colors.black;
    }
    else if(time.hour>=11 && time.hour<17)
    {
      textColor = Colors.black;
      greetings = "Good Afternoon\nTime to work";
      bgColor = Colors.yellow;
    }else{
      greetings = "Good Night\nTime to sleep";
      bgColor = Colors.black;
      textColor = Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bgColor,
        body: TextButton(
          onPressed: (){
            setState(() {
              fun();
            });
          },
          child: Center(
            child: Text(greetings,style: TextStyle(color: textColor),),
          ),
        ),
      ),
    );
  }
}

