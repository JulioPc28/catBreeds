import 'package:flutter/material.dart';
import 'package:prueba/pages/componentes_onboarning/appbar.dart';
import 'package:prueba/pages/componentes_onboarning/contenido_cat.dart';
import 'package:prueba/pages/componentes_onboarning/image_cat.dart';
import 'package:sizer/sizer.dart';

class CatDetailScreen extends StatelessWidget {
  static const String name = 'cat_detail';

  final Map<String, dynamic> breed;

  const CatDetailScreen({super.key, required this.breed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(context, breed['name'], 'detail'),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.92,
          margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
          decoration: BoxDecoration(
            color: const Color(0xffFFEFE1),
            border: Border.all(
              color: const Color(0xffff7701),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              SizedBox(height: 2.h),
              imagenGato(breed, 'detail'),
              SizedBox(height: 1.h),
              // Contenido scrollable debajo
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border: Border.all(
                        color: const Color(0xffff7701),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          datosCatDetail(breed),
                        ],
                      ),
                    ),
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