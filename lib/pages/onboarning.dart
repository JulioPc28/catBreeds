import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:prueba/pages/componentes_onboarning/bloque_1.dart';
import 'package:prueba/pages/componentes_onboarning/bloque_2.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/foundation.dart';  

class Onboarning extends StatelessWidget {
  static const String name = '/';
  const Onboarning({super.key});

  @override
  Widget build(BuildContext context) {
    // Detectar si es web
    if (kIsWeb) {
      return _buildWebLayout(context);
    } 
    // Detectar si es Android 
    else if (Theme.of(context).platform == TargetPlatform.android) {
      return _buildMobileLayout(context);
    } 
     else if (Theme.of(context).platform == TargetPlatform.iOS) {
      return _buildMobileLayout(context);
    } 
    // Otras plataformas (iOS, Windows, etc.)
    else {
      return _buildOtherLayout(context);
    }
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.h),
              FadeIn(
                duration: const Duration(seconds: 3),
                child: onboarningBloque1(context),
              ),
              SizedBox(height: 5.h),
              FadeIn(
                delay: const Duration(seconds: 2),
                duration: const Duration(seconds: 3),
                child: onboarningBloque2(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWebLayout(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: ListView(           
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       FadeIn(
                        duration: const Duration(seconds: 3),
                        child: onboarningBloque1(context),
                      ),
                  //    SizedBox(width: 10.w),
                      Column(
                        children: [
                          SizedBox(height: 10.h),
                          FadeIn(
                            delay: const Duration(seconds: 2),
                            duration: const Duration(seconds: 3),
                            child:  onboarningBloque2(context),
                          ),
                        ],
                      ),
                       SizedBox(width: 10.w),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOtherLayout(BuildContext context) {
    // Aquí puedes definir un layout para otras plataformas, si lo deseas
    return const Scaffold(
      body: Center(
        child: Text('Plataforma no soportada'),
      ),
    );
  }
}