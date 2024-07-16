import 'package:flutter/material.dart';
import 'package:grocery_app/screens/otp/components/widgets/otp_form/extra_otp_code_input.dart';
import 'package:grocery_app/screens/otp/components/widgets/otp_form/first_otp_code_input.dart';
import 'package:grocery_app/screens/otp/components/widgets/otp_form/submit_btn.dart';


class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  final _formKey = GlobalKey<FormState>();
  FocusNode? pin2FocusNode, pin3FocusNode, pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextFormField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FirstOTPCodeInputField(
                nextFormField: (value) => nextFormField(value: value, focusNode: pin2FocusNode!),
              ),
              AdditionalOTPCodeInputWidget(
                pinFocusNode: pin2FocusNode,
                nextFormField: (value) => nextFormField(value: value, focusNode: pin3FocusNode!),
              ),
              AdditionalOTPCodeInputWidget(
                pinFocusNode: pin3FocusNode,
                nextFormField: (value) => nextFormField(value: value, focusNode: pin4FocusNode!),
              ),
              AdditionalOTPCodeInputWidget(
                pinFocusNode: pin4FocusNode,
                nextFormField: (value) => pin4FocusNode!.unfocus(),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .08),
          const SubmitButtonWidget()  // submit button
        ],
      ),
    );
  }
}
