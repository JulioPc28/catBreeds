
import 'package:go_router/go_router.dart';
import 'package:prueba/pages/cat_detail.dart';
import 'package:prueba/pages/cat_list.dart';
import 'package:prueba/pages/onboarning.dart';



final appRouter = GoRouter(
   initialLocation: '/',
   routes: [
    GoRoute(
      path: '/', 
      builder: (context, state) => const Onboarning(),
    ),
    GoRoute(
      name: CatBreedsScreen.name,
      path: '/list_cat', 
      builder: (context, state) => const CatBreedsScreen(),
    ),
     GoRoute(
      name: CatDetailScreen.name,
      path: '/cat_detail',
      builder: (context, state) {
        final breed = state.extra as Map<String, dynamic>;
        return CatDetailScreen(breed: breed);
      },
    ),

   ]
);