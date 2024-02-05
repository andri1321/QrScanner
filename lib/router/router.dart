
import 'package:go_router/go_router.dart';
import 'package:qr_reader/screen/home_screen.dart';

import 'package:qr_reader/screen/mapa_screen.dart';

final route = GoRouter(
    
    initialLocation: '/home',

    routes: [
      GoRoute(
        path: '/home',
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: '/mapa',
        builder: (context, state) => MapaScreen(),
      )
    ]
  
  
);