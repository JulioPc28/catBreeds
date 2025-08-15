// ignore_for_file: deprecated_member_use

import 'package:prueba/pages/cat_list.dart';
import 'package:prueba/pages/componentes_onboarning/imput_text.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';




Widget onboarningBloque2(BuildContext context){
  return Column(
      children: [
      GestureDetector(
      onTap: () {
        context.pushNamed(CatBreedsScreen.name);
     // Navigator.pushReplacementNamed(context, '/welcome'); 
      },
       child: AvatarGlow(
        glowRadiusFactor: 2,
        glowColor: const Color(0xffff7701),
        glowCount: 3,
        child: SizedBox(  
              width:Theme.of(context).platform == TargetPlatform.android ? 15.w : 10.w,
              height: Theme.of(context).platform == TargetPlatform.android ? 15.h : 10.h,
              child: Image.asset('assets/images/logoSf.png'),
                ),
            ),
         ),
   SizedBox( height: 3.h,),
   TextInputCat(
        title: Theme.of(context).platform == TargetPlatform.android ?
                "Toque para continuar" : "Click para continuar" , 
        colorText: const Color(0xffff7701), 
        dimen: 15.sp,      
        onPressed: () {},
        sombra: false,
       ),
   SizedBox( height: 3.h,),
  //   TextInputCat(
  //      title: "Version 1.0" , 
  //      colorText: const Color(0xff000000).withOpacity(0.6),
  //      dimen:  14.sp, 
  //      tipoText: 'Georgia', 
  //      styleText: FontStyle.normal, 
  //      onPressed: () {},
  //      sombra: false,
  //     ),
   ],
 ) ;
}