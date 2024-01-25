import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class weightScreen extends StatelessWidget {
  const weightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
         
            
            Container(
              width: 6.57.w, 
              height: 2.94.h, 
             margin: EdgeInsets.only(
                top: 8.5.h, 
                 left: 5.2.w, 
              ),
              child: Image.asset('assets/image/angle.png'),
            ),
            SizedBox(height: 2.h,),
            Container(
              width: 32.w,
              height:3.5.h,

              margin: EdgeInsets.only(
                
               
                left: 7.4.w,
              ),
              child: Text(
                'Enter Weight',
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 16.66.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                
                  letterSpacing: -0.01.w
                  
                ),
              ),
            ),
            SizedBox(height: 1.5.h),
            Container(
              width: 81.31.w,
              height:2.5.h,

              margin: EdgeInsets.only(
                
               
                left: 7.4.w,
              ),
              child: Text(
                'തൂക്കം അളന്നതിനു ശേഷം ഇവിടെ രേഖപ്പെടുത്തുക ',
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 10.88.sp,
                  color: Color.fromRGBO(73, 73, 73, 1),

                  fontWeight: FontWeight.w500,
                
                  letterSpacing: -0.01.w
                  
                ),
              ),
            ),
             SizedBox(height: 6.82.h),
             Container(
              width: 13.68.w,
              height: 0.24.h,
              margin: EdgeInsets.only(
                
                left: 8.68.w,
              ),
              color: Color.fromRGBO(3, 97, 99, 1),
            ),
             Container(
              width: 13.68.w,
              height: 0.24.h,
              margin: EdgeInsets.only(
                
                left: 24.2.w,
              ),
              color: Color.fromRGBO(3, 97, 99, 1),
            ),
            Container(
              width: 13.68.w,
              height: 0.24.h,
              margin: EdgeInsets.only(
                
                left: 39.73.w,
              ),
              color: Color.fromRGBO(3, 97, 99, 1),
            ),
            Container(
              width: 13.68.w,
              height: 0.24.h,
              margin: EdgeInsets.only(
                
                left: 55.26.w,
              ),
              color: Color.fromRGBO(3, 97, 99, 1),
            ),
            SizedBox(height: 3.h),
            
            Container(
              width: 23.68.w,
              height:2.35.h,

              margin: EdgeInsets.only(
                
               
                left: 7.4.w,
              ),
              child: Text(
                ' Enter Weight',
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 11.66.sp,
                  color: Color.fromRGBO(52, 64, 84, 1),

                  fontWeight: FontWeight.w500,
                
                  letterSpacing: -0.01.w
                  
                ),
              ),
            ),
            SizedBox(height: 2.5.h),
            Container(
              width: 84.21.w,
              height: 6.h,
              margin: EdgeInsets.only(left: 7.12.w),
              padding: EdgeInsets.fromLTRB(7.4.w, 1.64.h, 2.63.w, 1.64.h),
              decoration: BoxDecoration(
              
                borderRadius: BorderRadius.circular(2.66.w),
                border: Border.all(color: Color.fromRGBO(208, 213, 221, 1)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0,0,0,0),
                    blurRadius: .50.w,
                    offset: Offset(0, 1),
                  ),
                ],
                gradient: LinearGradient(
                  
                  colors: [
                    Color.fromRGBO(255, 255, 255, 1),
                    Color.fromRGBO(255, 255, 255, 1),
                  ],
                ),
              ),
              child: TextField(
                
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 11.66.sp,
                  color: Colors.black,
                ),
              ),
            ),
             SizedBox(height: 3.h),
            Container(
              width: 55.52.w,
              height:3.h,

              margin: EdgeInsets.only(
                
               
                left: 7.4.w,
              ),
              child: Text(
                'ഫോട്ടോ അപ്‌ലോഡ് ചെയ്യുക ',
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 10.88.sp,
                  color: Color.fromRGBO(73, 73, 73, 1),

                  fontWeight: FontWeight.w500,
                
                  letterSpacing: -0.01.w
                  
                ),
              ),
            ),
            SizedBox(height:2.58.h),
            Container(
              width: 83.68.w,
              height: 12.82.h, 
              margin: EdgeInsets.only(left: 7.4.w),
              child: Image.asset('assets/image/upload.png'),
            ),
            SizedBox(height: 28.17.h),
                 Container(
              width: 84.21.w,
              height: 5.17.h,
              margin: EdgeInsets.only(left: 7.36.w),
              child: ElevatedButton(
                onPressed: () {
                  // Handle the button tap action
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(3, 97, 99, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.10.w),
                    side: BorderSide(
                      width: 0.50.w,
                      color: Color.fromRGBO(127, 86, 217, 1),
                    ),
                  ),
                  shadowColor: Color.fromRGBO(16, 24, 40, 0.05),
                  elevation: 2,
                ),
                child: Center(
                  child: Text(
                    'Save & Next',
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 13.33.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 