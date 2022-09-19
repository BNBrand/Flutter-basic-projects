import 'package:flutter/material.dart';

int itemCount = 20;
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('item ${index+1}'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.select_all),
          );
        }
    );
  }
}
