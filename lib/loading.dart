import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Loadigin extends StatefulWidget {
  const Loadigin({Key? key}) : super(key: key);

  @override
  State<Loadigin> createState() => _LoadiginState();
}

class _LoadiginState extends State<Loadigin> {
  Timer? _timer;
  late double _progress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FLUTTER_EASYLOADIN'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  _timer?.cancel();
                  await EasyLoading.showToast(
                    'loading...',
                    maskType: EasyLoadingMaskType.black,
                  );
                  print('EasyLoading show');
                },
                child: Text('Teste'),
              )
            ],
          ),
        ));
  }
}
