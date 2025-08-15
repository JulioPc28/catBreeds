
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prueba/pages/componentes_onboarning/imput_text.dart';
import 'package:sizer/sizer.dart';


Widget onboarningBloque1(BuildContext context){
   const String assetName = 'assets/images/one.svg';
    final Widget svg = SvgPicture.asset(
    assetName,
    semanticsLabel: 'CatBreeds Logo'
    );
  return Column(
     children: [                            
      SizedBox( 
             height:  35.h,
             width:  45.w,
             child: svg
            ),
      Theme.of(context).platform == TargetPlatform.android ? 
      SizedBox(height: 1.h,) :  SizedBox(height: 6.h,) ,
      TextInputCat(
              title: 'CatBreeds', 
              colorText: const Color(0xffff7701), 
              dimen:  20.sp ,
              onPressed: (){},
              sombra: true,
             ),                                   
     SizedBox( height: 1.h,),
    
     TextInputCat(
              title: "Razas\nde gatos!", 
              colorText: const Color(0xffff7701), 
              dimen:  16.sp, 
              onPressed: (){},
              sombra: false,
              )
   ],
  );
}