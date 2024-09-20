import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCode extends StatelessWidget {

static const String id = 'PinCodeScreen';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: const Text('PincodeScreen')),

    body:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: 
           PinCodeTextField(
                appContext: context,
                length: 6,
                keyboardType: TextInputType.number,
                obscureText: true,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  fieldHeight: 50,
                  fieldWidth: 40,
                  borderRadius: BorderRadius.circular(10)
                ),
                onChanged:(value){
              
              },
              ),
            
          ),
        ),
        
      ],
    )
    );
  }
}