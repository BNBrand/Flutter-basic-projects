import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   var num1=0,num2=0,sum=0;

   final TextEditingController t1= TextEditingController();
   final TextEditingController t2= TextEditingController();
   void add(){
     setState((){
       num1 = int.parse(t1.text);
       num2 = int.parse(t2.text);
       sum = num1 + num2;
     });
   }
    void sub(){
      setState((){
        num1 = int.parse(t1.text);
        num2 = int.parse(t2.text);
        sum = num1 - num2;
      });
    }
    void mult(){
      setState((){
        num1 = int.parse(t1.text);
        num2 = int.parse(t2.text);
        sum = num1 * num2;
      });
    }
   void div(){
     setState((){
       num1 = int.parse(t1.text);
       num2 = int.parse(t2.text);
       sum = num1 ~/ num2;
     });
   }
   void clear(){
     setState((){
      sum = 0;
      t1.text = '';
      t2.text = '';
     });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
          'Output :$sum',
          style: TextStyle(
          ),
        ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Enter Number 1'),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Enter Number 1'),
              controller: t2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("+"),
                  color: Colors.blueGrey,
                  onPressed: add,
                ),
                MaterialButton(
                  child: Text("-"),
                  color: Colors.blueGrey,
                  onPressed: sub,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("*"),
                  color: Colors.blueGrey,
                  onPressed: mult,
                ),
                MaterialButton(
                  child: Text("/"),
                  color: Colors.blueGrey,
                  onPressed: div,
                ),
              ],
            ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              child: Text("Clear"),
              color: Colors.grey,
              onPressed: clear,
            ),
          ],
        ),
        ]
      ),
      ),
    );
  }
}
