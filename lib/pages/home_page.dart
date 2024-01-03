import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text("CoffeeInsight"),
        actions: [
          Icon(Icons.location_on_outlined)
        ],
      ),
      body: ListView(children: mockUsersFromServer())
    );
  }
  Widget _userItem(){
    return Row(
      children: [
        Image.asset('assets/temp/Shop Image.png',
            height: 40,
            width: 40
        ),

        SizedBox(
          width: 16,
        ),
        Text('Coffee Project'),
      ],
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 10; i++) {
      users.add(_userItem());
    }
    return users;
  }
}

