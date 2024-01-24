import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../styles/app_colors.dart';


class SettingsPage extends StatelessWidget {
  SettingsPage(); // Remove unnecessary super.key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 45, left: 30, right: 30),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),

              Center(
                child: SizedBox(
                  width: 70,
                  height: 18,
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      height: 0,
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
