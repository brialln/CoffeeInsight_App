import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../styles/app_colors.dart';


class ShopsPage extends StatelessWidget {
  ShopsPage(); // Remove unnecessary super.key

  final TextEditingController _textController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 45, left: 30, right: 30),
          child: Column(
            children: [
              Container(
                width: 400.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppColors.gray,
                ),
                child: CupertinoSearchTextField(
                  controller: _textController,
                  //
                ),
              ),

              SizedBox(
                height: 23,
              ),

              SizedBox(
                width: 1000,
                height: 25,
                child: Text(
                  'CoffeeInsight',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              SizedBox(
                width: 120,
                height: 14,
                child: Text(
                  'Let’s start your day!',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),

              SizedBox(
                height: 10
              ),

              SizedBox(
                width: 1000,
                height: 25,
                child: Text(
                  'Coffee-in-Sight',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                    height: 0,
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
