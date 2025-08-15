import 'package:flutter/material.dart';
import 'package:prueba/router/router.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(const CatBreeds());

class CatBreeds extends StatelessWidget {
  const CatBreeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
        return  MaterialApp.router(
           debugShowCheckedModeBanner: false,
           title: 'CatBreeds',
           routerConfig: appRouter,
         );
       }
     );
  }
}
