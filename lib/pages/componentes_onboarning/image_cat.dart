// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:prueba/pages/componentes_onboarning/get_image.dart';
import 'package:prueba/pages/componentes_onboarning/imput_text.dart';
import 'package:sizer/sizer.dart';


  
Container imagenGato(breed, String typeView) {
  return Container(
    width: typeView == 'list' ? 50.w : 85.w,
    height: typeView == 'list' ? 25.h : 45.h,
    child: breed['reference_image_id'] != null
        ? FutureBuilder<Uint8List?>(
            future: fetchCatImage(breed['reference_image_id']),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(strokeWidth: 2),
                );
              } else if (snapshot.hasData && snapshot.data != null) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(16), // ← Bordes redondeados
                  child: Image.memory(
                    snapshot.data!,
                   width: typeView == 'list' ? 60.w : 90.w,
                   height: typeView == 'list' ? 30.h : 45.h,
                    fit: BoxFit.cover,
                  ),
                );
              } else {
                return Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextInputCat(
                            title: "Sin Imagen!", 
                            colorText: const Color(0xffff7701), 
                            dimen:  16.sp, 
                            onPressed: (){},
                            sombra: false,
                            ),
                      SizedBox(height: 2.h),
                      Icon(Icons.pets,
                        size: 40.sp,
                        color: Colors.black,),
                    ],
                  ),
                );
              }
            },
          )
        :  Icon(Icons.pets,
            size: 40.sp,
            color: Colors.black,),
  );
}
