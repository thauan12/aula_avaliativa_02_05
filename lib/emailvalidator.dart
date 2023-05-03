import 'dart:io';

import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class EmailValidatorPage extends StatefulWidget {
  const EmailValidatorPage({Key? key}) : super(key: key);

  @override
  State<EmailValidatorPage> createState() => _EmailValidatorState();
}

class _EmailValidatorState extends State<EmailValidatorPage> {
  TextEditingController inputcontroller = TextEditingController();
  String emailStatus = '';

  void validarEmail(String email) {
    bool status = EmailValidator.validate(inputcontroller.text);
    setState(() {
      status ? emailStatus = 'Email Válido' : emailStatus = 'Email Inválido';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EMAIL_VALIDATOR'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 40),
          child: Column(
            children: [
              TextField(
                controller: inputcontroller,
                decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              ElevatedButton(
                  onPressed: () {
                    return validarEmail(inputcontroller.text);
                  },
                  child: Text('Checar Email')),
              Text(emailStatus)
            ],
          ),
        ),
      ),
    );
  }
}
