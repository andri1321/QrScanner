// ignore_for_file: use_key_in_widget_constructors, unused_element, unused_local_variable
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';
import 'package:qr_reader/screen/direcciones_screen.dart';
import 'package:qr_reader/screen/mapa_screen.dart';
import 'package:qr_reader/screen/mapas_screen.dart';
import 'package:qr_reader/widget/custom_navigatorbar.dart';
import 'package:qr_reader/widget/scan_button.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial'),
        elevation: 10,
        actions:  [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: (){},
          )
        ],
      ),
      body: _HomeScreenBody(),
      
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomeScreenBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final uiProvider = Provider.of<UiProvider>(context);
   
   final currentIndex = uiProvider.selectedMenuOpt;

   switch( currentIndex ){
      
     case 0:
     return MapasScreen();

     case 1:
     return DireccioneScreen();
     
     default:
       return MapasScreen();
   }

  }
}