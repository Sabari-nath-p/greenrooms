import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenworms/Screen/homeScreen/components/JobSheetCard.dart';
import 'package:greenworms/Screen/homeScreen/controller.dart';
import 'package:greenworms/Screen/stageScreen/weightScreen.dart';
import 'package:sizer/sizer.dart';

class JobListCard extends StatelessWidget {
   JobListCard({super.key});
   homeController homeCtrl = Get.put(homeController());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column( 
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(0.1.h, 10.h, 0, 0),
                  child: Text(
                    "Job List",
                    style: GoogleFonts.lexend(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ))),
                  SizedBox(height: 4.h,),
          
          for(var data in homeCtrl.joblist )
      
          
          
           InkWell(onTap: (){
            Get.to(()=>weightScreen());
          },
            child: JobSheetCard(
              JobStatus: 0,
              jobData : data,
            ),
          )
        ],
      ),
    );
  }
}
