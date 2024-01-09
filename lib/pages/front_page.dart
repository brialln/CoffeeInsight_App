import 'package:flutter/material.dart';
import '../styles/app_colors.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.only(top: 0, left: 45, right: 45),

            child: Column(

              children: [
                Spacer(),
                Image.asset('assets/icons/CoffeeInsight-Logo.png'),

                Text('Welcome to', style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                )),

                Text('CoffeeInsight', style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                )),

                SizedBox(
                  height: 30,
                ),

                SizedBox(
                  width: 350,
                  height: 55,
                  child: ElevatedButton(onPressed: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.secondary,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),

                      ),
                    ),
                    child: Text("LOGIN", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 16,
                ),

                SizedBox(
                  width: 350,
                  height: 55,
                  child: ElevatedButton(onPressed: () {
                    Navigator.of(context).pushNamed('/signup');
                  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.secondary,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),

                      ),
                    ),
                    child: Text("SIGN UP", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}