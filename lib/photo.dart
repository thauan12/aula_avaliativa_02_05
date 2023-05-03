import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewPage extends StatelessWidget {
  const PhotoViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PHOTO_VIEW'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Container(child: PhotoView(imageProvider: NetworkImage('https://redelan.files.wordpress.com/2013/01/rede_de_computadores_destaque.jpg?w=1568')),),
    );
    ;
  }
}
