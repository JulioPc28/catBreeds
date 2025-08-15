// ignore_for_file: unused_field, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prueba/pages/componentes_onboarning/appbar.dart';
import 'package:prueba/pages/componentes_onboarning/contenido_cat.dart';
import 'package:prueba/pages/componentes_onboarning/image_cat.dart';
import 'package:prueba/pages/componentes_onboarning/imput_text.dart';
import 'package:prueba/service/api_cat_service.dart';
import 'package:sizer/sizer.dart';

class CatBreedsScreen extends StatefulWidget {
  static const String name = 'list_cat';

  const CatBreedsScreen({super.key});

  @override
  State<CatBreedsScreen> createState() => _CatBreedsScreenState();
}

class _CatBreedsScreenState extends State<CatBreedsScreen> {
  final CatApiService _apiService = CatApiService();
  late Future<List<dynamic>> _breedsFuture;
  List<dynamic> _allBreeds = [];
  List<dynamic> _filteredBreeds = [];
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _breedsFuture = _apiService.fetchBreeds().then((data) {
      _allBreeds = data;
      _filteredBreeds = data;
      return data;
    });
  }

  void _filterBreeds(String query) {
    setState(() {
      _searchQuery = query;
      _filteredBreeds = _allBreeds
          .where((breed) =>
              breed['name'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(context,  'Catbreeds', 'list'),
      body: FutureBuilder<List<dynamic>>(
        future: _breedsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return Column(
              children: [
                SizedBox(height: 1.h,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: buscarGato(),
                ),
                SizedBox(height: 0.7.h,),
                TextInputCat(
                  title: 'Total de razas: ${_filteredBreeds.length}', 
                  colorText: const Color(0xff000000), 
                  dimen:  16.sp, 
                  onPressed: (){},
                  sombra: false,
                ),
                SizedBox(height: 0.7.h,),
                Expanded(
                  child: ListView.builder(
                    itemCount: _filteredBreeds.length,
                    itemBuilder: (context, index) {
                      final breed = _filteredBreeds[index];
                      final itemNumber = index + 1;
                      return Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.92,
                          child: Card(
                            margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                            color: const Color(0xffFFEFE1), // Fondo personalizado
                             elevation: 6, // Sombra más pronunciada
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(16), // Bordes redondeados
                               side: BorderSide(color: Color(0xffff7701), width: 0.5), // Borde visible
                             ),
                            child: ListTile(
                              // leading: ,
                              title: TextInputCat(
                                  title: '$itemNumber - ${breed['name']}', 
                                  colorText: const Color(0xff000000), 
                                  dimen:  16.sp, 
                                  onPressed: (){},
                                  sombra: false,
                                 ),
                              subtitle: Column(
                                children: [
                                  SizedBox(height: 2.h,),
                                  imagenGato(breed, 'list'),
                                  SizedBox(height: 2.h,),
                                  datosCatList(breed),
                                  SizedBox(height: 2.h,),
                                ],
                              ),
                              isThreeLine: true,
                              onTap: () {
                                context.pushNamed(
                                  'cat_detail',
                                  extra: breed,
                                );
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }





 


  Container buscarGato() {
       return Container(
         width: MediaQuery.of(context).size.width * 0.9,
         margin: EdgeInsets.symmetric(horizontal: 2.w, ),
         child: TextField(
         decoration: InputDecoration(
         labelText: ' Escriba la raza del gato ',
         labelStyle: const TextStyle(
           color: Color(0xffff7701),
           fontFamily: 'Georgia', 
           fontStyle: FontStyle.italic, 
         ),
         prefixIcon: const Icon(Icons.search, color: Color(0xffff7701)), 
         enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(12),
           borderSide: const BorderSide(
             color: Color(0xffff7701), 
             width: 1,
           ),
         ),
         focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(12),
           borderSide: const BorderSide(
             color: Color(0xffff7701),
             width: 2.5,
           ),
         ),
              ),
              cursorColor: const Color(0xffff7701), 
              style: const TextStyle(color: Color(0xffff7701)), 
              onChanged: _filterBreeds,
            ),
       );
  }
}