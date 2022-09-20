import 'package:flutter/material.dart';


class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {

    //simulate request from db
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'yoshi';
    });
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'Master kungfu';
    });

    print('$username - $bio');

  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
