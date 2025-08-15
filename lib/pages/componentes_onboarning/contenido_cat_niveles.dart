// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NivelCaracteristica extends StatelessWidget {
  final String titulo;
  final int nivel;

  const NivelCaracteristica({
    Key? key,
    required this.titulo,
    required this.nivel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.5.h),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffffffff), // ← Aquí defines el color de fondo
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
        child: Row(
          children: [
            Icon(
              Icons.star,
              color: Color(0xffff7701),
              size: 18.sp,
            ),
            SizedBox(width: 1.w),
            Text(
              '$titulo:',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xffff7701),
              ),
            ),
            SizedBox(width: 2.w),
            Expanded(
              child: LinearProgressIndicator(
                value: nivel / 5,
                backgroundColor: Colors.grey.shade300,
                color: Color(0xffff7701),
                minHeight: 8.sp,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            SizedBox(width: 2.w),
            Text(
              '$nivel/5',
              style: TextStyle(
                fontSize: 13.sp,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}