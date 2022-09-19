import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {

  bool isSwitch = false;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Flutter'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.info_outline))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/asd.png'),
            SizedBox(height: 20.0,),
            Divider(
              color: Colors.black,
            ),
            GestureDetector(
              onTap: () {
                print('Chapter 1 loading');
              },
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/asd.png'),
                    radius: 30.0,
                  ),
                  SizedBox(width: 20.0,),
                  Text('Chapter 1')
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            GestureDetector(
              onTap: () {
                print('Chapter 1 loading');
              },
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/asd2.png'),
                    radius: 30.0,
                  ),
                  SizedBox(width: 20.0,),
                  Text('Chapter 2')
                ],
              ),
            ),
            Switch(value: isSwitch, onChanged: (bool newBool) {
              setState(() {
                isSwitch = newBool;
              });
            }),
            Checkbox(value: isChecked, onChanged: (bool? newBool) {
              setState(() {
                isChecked = newBool;
              });
            }),
            Image.asset('assets/images/demii.PNG')
          ],
        ),
      ),
    );
  }
}
