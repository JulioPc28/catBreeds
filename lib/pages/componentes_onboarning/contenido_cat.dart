import 'package:flutter/material.dart';
import 'package:prueba/pages/componentes_onboarning/contenido_cat_niveles.dart';
import 'package:prueba/pages/componentes_onboarning/imput_text.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

Column datosCatList(breed) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextInputCat(
               title: 'Pais de Origen: ', 
               colorText: const  Color(0xffff7701), 
               dimen:  14.sp, 
               onPressed: (){},
               sombra: false,
             ),
              TextInputCat(
               title: '${breed['origin']}', 
               colorText: const Color(0xff000000), 
               dimen:  14.sp,  
               onPressed: (){},
               sombra: false,
             ),
          ],
        ),
        
            TextInputCat(
               title: 'Temperamento: ', 
               colorText: const Color(0xffff7701), 
               dimen:  14.sp,  
               onPressed: (){},
               sombra: false,
            ),
            Wrap(
              children: [
                 TextInputCatParrafo(
                 title: '${breed['temperament']}', 
                 colorText: const Color(0xff000000), 
                 dimen:  14.sp, 
                 onPressed: (){},
                 sombra: false,
              ),
              ]
              
            ),
         
      ],
    );
  }






Column datosCatDetail(breed) {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextInputCat(
            title: 'Pais de Origen: ',
            colorText: const Color(0xffff7701),
            dimen: 14.sp,
            onPressed: () {},
            sombra: false,
          ),
          TextInputCat(
            title: ' ${breed['origin']}',
            colorText: const Color(0xff000000),
            dimen: 14.sp,
            onPressed: () {},
            sombra: false,
          ),
        ],
      ),
      SizedBox(height: 0.5.h),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextInputCat(
            title: 'Esperanza de vida: ',
            colorText: const Color(0xffff7701),
            dimen: 14.sp,
            onPressed: () {},
            sombra: false,
          ),
          TextInputCat(
            title: ' ${breed['life_span']} años',
            colorText: const Color(0xff000000),
            dimen: 14.sp,
            onPressed: () {},
            sombra: false,
          ),
        ],
      ),
      SizedBox(height: 0.5.h),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextInputCat(
            title: 'Peso promedio: ',
            colorText: const Color(0xffff7701),
            dimen: 14.sp,
            onPressed: () {},
            sombra: false,
          ),
          TextInputCat(
            title: ' ${breed['weight']['metric']} kg',
            colorText: const Color(0xff000000),
            dimen: 14.sp,
            onPressed: () {},
            sombra: false,
          ),
        ],
      ),
      SizedBox(height: 0.5.h),
      TextInputCat(
        title: 'Temperamento: ',
        colorText: const Color(0xffff7701),
        dimen: 14.sp,
        onPressed: () {},
        sombra: false,
      ),
      Wrap(
        children: [
          TextInputCatParrafo(
            title: '${breed['temperament']}',
            colorText: const Color(0xff000000),
            dimen: 14.sp,
            onPressed: () {},
            sombra: false,
          ),
        ],
      ),
      SizedBox(height: 0.5.h),
      TextInputCat(
        title: 'Descripcion: ',
        colorText: const Color(0xffff7701),
        dimen: 14.sp,
        onPressed: () {},
        sombra: false,
      ),
      Wrap(
        children: [
          TextInputCatParrafo(
            title: '${breed['description']}',
            colorText: const Color(0xff000000),
            dimen: 14.sp,
            onPressed: () {},
            sombra: false,
          ),
        ],
      ),
      SizedBox(height: 0.5.h),
      Card(
        color: Color(0xffFFEFE1),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: Column(
            children: [
              NivelCaracteristica(
                titulo: 'Inteligencia',
                nivel: breed['intelligence'],
              ),
              NivelCaracteristica(
                titulo: 'Afecto',
                nivel: breed['affection_level'],
              ),
              NivelCaracteristica(
                titulo: 'Energía',
                nivel: breed['energy_level'],
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 1.h),
      TextButton.icon(
        onPressed: () {
          launchUrl(Uri.parse(breed['wikipedia_url']));
        },
        icon: Icon(
          Icons.open_in_new,
          color: Color(0xffff7701),
          size: 18.sp,
        ),
        label: Text(
          'Ver en Wikipedia',
          style: TextStyle(
            color: Color(0xffff7701),
            fontSize: 14.sp,
            fontFamily: 'Georgia',
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            decorationColor: Color(0xffff7701),
            decorationThickness: 2,
          ),
        ),
      ),
      SizedBox(height: 0.5.h),
    ],
  );
}