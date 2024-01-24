import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../styles/app_colors.dart';


class HomePage extends StatelessWidget {
  HomePage(); // Remove unnecessary super.key

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
                width: 180,
                height: 14,
                child: Text(
                  'Let’s fill you up with caffeine!',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              SizedBox(
                width: 500,
                height: 15,
                child: Text(
                  'Favorites',
                  style: TextStyle(
                    color: Color(0xFF4F200D),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              Container(
                width: 316,
                height: 72,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 316,
                        height: 72,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFF3D6),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFF4F200D)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 69,
                      top: 18,
                      child: SizedBox(
                        width: 150,
                        height: 17,
                        child: Text(
                          'Coffee Project',
                          style: TextStyle(
                            color: Color(0xFF4F200D),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 292,
                      top: 27,
                      child: Transform(
                        transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.25),
                        child: Container(
                          width: 17,
                          height: 17,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFB100),
                            shape: StarBorder(
                              points: 5,
                              innerRadiusRatio: 0.38,
                              pointRounding: 0,
                              valleyRounding: 0,
                              rotation: 0,
                              squash: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 22,
                      top: 18,
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("assets/icons/coffee-project.svg"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(
                            side: BorderSide(width: 1, color: Color(0xFF4F200D)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 69,
                      top: 36,
                      child: SizedBox(
                        width: 150,
                        height: 11,
                        child: Text(
                          '526 Legarda St., Sampaloc, Manila',
                          style: TextStyle(
                            color: Color(0xFF4F200D),
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 70,
                      top: 47,
                      child: Text(
                        '9:00 AM - 9:00 PM',
                        style: TextStyle(
                          color: Color(0xFF4F200D),
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                width: 316,
                height: 72,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 316,
                        height: 72,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFF3D6),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFF4F200D)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 69,
                      top: 18,
                      child: SizedBox(
                        width: 150,
                        height: 17,
                        child: Text(
                          'Coffee Project',
                          style: TextStyle(
                            color: Color(0xFF4F200D),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 292,
                      top: 27,
                      child: Transform(
                        transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.25),
                        child: Container(
                          width: 17,
                          height: 17,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFB100),
                            shape: StarBorder(
                              points: 5,
                              innerRadiusRatio: 0.38,
                              pointRounding: 0,
                              valleyRounding: 0,
                              rotation: 0,
                              squash: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 22,
                      top: 18,
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("assets/icons/coffee-project.svg"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(
                            side: BorderSide(width: 1, color: Color(0xFF4F200D)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 69,
                      top: 36,
                      child: SizedBox(
                        width: 150,
                        height: 11,
                        child: Text(
                          '526 Legarda St., Sampaloc, Manila',
                          style: TextStyle(
                            color: Color(0xFF4F200D),
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 70,
                      top: 47,
                      child: Text(
                        '9:00 AM - 9:00 PM',
                        style: TextStyle(
                          color: Color(0xFF4F200D),
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 19,
              ),

              SizedBox(
                width: 51,
                height: 15,
                child: Text(
                  'Add More',
                  style: TextStyle(
                    color: AppColors.bright,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),

              SizedBox(
                height: 40,
              ),

              SizedBox(
                width: 500,
                height: 16,
                child: Text(
                  'Most Visited by Others',
                  style: TextStyle(
                    color: Color(0xFF4F200D),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
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
