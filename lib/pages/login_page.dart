import 'package:flutter/material.dart';
import '../styles/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Image.asset('assets/Back Arrow.png'),
                  )

                ),

                Image.asset('assets/CoffeeInsight-Logo.png'),

                SizedBox(
                  height: 20,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Enter Username", style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  )),
                ),

                SizedBox(
                  height: 5,
                ),

                SizedBox(
                  height: 55,
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.primary, width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                      hintText: 'Username',
                      filled: true,
                      fillColor: AppColors.background.withOpacity(0.8),
                    ),
                  ),
                ),

                SizedBox(
                  height: 14,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Enter Password", style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  )),
                ),

                SizedBox(
                  height: 5,
                ),

                SizedBox(
                  height: 55,
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.primary, width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                      hintText: 'Password',
                      filled: true,
                      fillColor: AppColors.background.withOpacity(0.8),
                    ),
                  ),
                ),

                SizedBox(
                  height: 14,
                ),
                

                SizedBox(
                  height: 28,
                ),

                SizedBox(
                  width: 350,
                  height: 55,
                  child: ElevatedButton(onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/main');
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
                      fontSize: 18,
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
                    Navigator.pushNamed(context, '/forgot-pass');
                  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.secondary,
                      foregroundColor: AppColors.primary,
                      side: BorderSide(color: AppColors.primary, width: 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),

                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Forgot Password?', style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16
                          )),

                        ]
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