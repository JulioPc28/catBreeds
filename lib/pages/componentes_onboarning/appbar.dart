// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


PreferredSizeWidget appBarHome(
   BuildContext context, 
   String? displayName, 
   String typeView){
   return AppBar(
      title: Column(
         crossAxisAlignment: CrossAxisAlignment.start, 
         children: [
             Center(
               child: Row(                 
                 children: [
                   SizedBox( width: 2.h,),
                   logoAppBar(context),
                   SizedBox( width: 2.h,),
                   Text('$displayName'  ,
                        style: TextStyle(
                        fontSize: 18.sp, 
                        fontFamily: 'Georgia', 
                        fontStyle: FontStyle.italic, 
                        ),
                        textAlign: TextAlign.center,
                   ),
                 ],
               ),
             ),
             const  SizedBox(height: 3,),
          
          ],
      ),
      backgroundColor: const Color(0xffff7701), 
      foregroundColor: const Color(0xffffffff),
      toolbarHeight:  9.h ,
      automaticallyImplyLeading: typeView == 'list' ? false : true,
      actions: [
           Row(
             children: [
              Container(
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(100),
                       color: const Color(0xffffffff),
                    ),
                    child: SizedBox()
                //    IconButton(
                //       icon: const Icon(Icons.logout),
                //       color: const Color(0xffff7701), 
                //       onPressed: () {
                //       },
                //    ),
                 ),
                 SizedBox(width: 1.h,)
              ],
           )
       ], 
   );
 }








Container logoAppBar(BuildContext context) {
  return Container(
      height: 60,     
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const  Color(0xffffffff).withOpacity(0.8),
      ),
      child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('assets/images/logo.png', 
                         height: 55, 
                         fit: BoxFit.cover,
              ),
         ),
     ),
   );
}

