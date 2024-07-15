import 'package:flutter/material.dart';


class AdditionalOTPCodeInputWidget extends StatelessWidget {
  const AdditionalOTPCodeInputWidget({
    super.key,
    required this.pinFocusNode,
    required this.nextFormField,
  });

  final FocusNode? pinFocusNode;
  final void Function(String) nextFormField;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .2,
      child: TextFormField(
        autofocus: true,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(color: Colors.grey),
          ),
        ),
        focusNode: pinFocusNode,
        keyboardType: TextInputType.number,
        obscureText: true,
        onChanged: nextFormField,
        style: const TextStyle(fontSize: 25.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}