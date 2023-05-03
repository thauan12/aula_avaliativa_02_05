import 'package:aula_avaliativa_02_05/emailvalidator.dart';
import 'package:aula_avaliativa_02_05/loading.dart';
import 'package:aula_avaliativa_02_05/textoanimado.dart';
import 'package:aula_avaliativa_02_05/video.dart';
import 'package:aula_avaliativa_02_05/photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'homeScreen.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      initialRoute: '/',
      routes: {
      '/' : (_) => const HomeScreen(),
        '/video' : (_) => const Video(),
        '/photo' : (_) => const PhotoViewPage(),
        '/textoanimado' : (_) => const TextoAnimado(),
        '/loading' : (_) => const Loadigin(),
        '/emailvalidator' : (_) => const EmailValidatorPage(),
  }
  ));
}