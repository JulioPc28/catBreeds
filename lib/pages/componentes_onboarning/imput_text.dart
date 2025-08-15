
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';



class TextInputCat extends StatelessWidget { 
   final  String title;
   final  Color colorText;
   final  double dimen;
   final VoidCallback? onPressed;
   final bool sombra;
  const TextInputCat({
    super.key,    
   required this.title,
    required this.colorText,
    required this.dimen,
    required this.onPressed,
    required this.sombra,
    });
  @override
  Widget build(BuildContext context) {
   return   Text( title,
      textAlign: TextAlign.center,
      style: sombra == true ? TextStyle(
        color: colorText,
        fontSize: dimen,        
        fontStyle: FontStyle.italic,
        fontFamily: 'Georgia',
       shadows: [
       Shadow(
         offset: const Offset(5.0, 5.0), // Desplazamiento de la sombra
         blurRadius: 1.0,          // Suavizado de la sombra
         color: Colors.grey.withOpacity(0.4), // Color de la sombra
           ),
         ],   
      ) : TextStyle(
        color: colorText,
        fontSize: dimen,        
        fontStyle: FontStyle.italic,
        fontFamily: 'Georgia',
      ),
    );
  }
}


class TextInputCatParrafo extends StatelessWidget { 
   final  String title;
   final  Color colorText;
   final  double dimen;
   final VoidCallback? onPressed;
   final bool sombra;
  const TextInputCatParrafo({
    super.key,    
   required this.title,
    required this.colorText,
    required this.dimen,
    required this.onPressed,
    required this.sombra,
    });
  @override
  Widget build(BuildContext context) {
   return   Text(
  title,
  textAlign: TextAlign.center,
  softWrap: true, // ← Permite que el texto se divida en varias líneas
  overflow: TextOverflow.visible, // ← Evita que se corte o se muestre con puntos suspensivos
  style: sombra == true
      ? TextStyle(
          color: colorText,
          fontSize: dimen,
          fontStyle: FontStyle.italic,
          fontFamily: 'Georgia',
          shadows: [
            Shadow(
              offset: const Offset(5.0, 5.0),
              blurRadius: 1.0,
              color: Colors.grey.withOpacity(0.4),
            ),
          ],
        )
      : TextStyle(
          color: colorText,
          fontSize: dimen,
          fontStyle: FontStyle.italic,
          fontFamily: 'Georgia',
        ),
);
  }
}