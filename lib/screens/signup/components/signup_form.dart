import 'package:flutter/material.dart';
import 'package:grocery_app/common/widgets/form_errors.dart';
import 'package:grocery_app/constants/colors.dart';
import 'package:grocery_app/screens/login/login.dart';
import 'package:grocery_app/screens/signup/components/utils/validators.dart';


class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  String? email, password, confirmPassword;
  final List<String> formErrors = [];

  void addError({required String error}) {
    if (!formErrors.contains(error)) {
      setState(() {
        formErrors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (formErrors.contains(error)) {
      setState(() {
        formErrors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          emailFormField(email, addError, removeError),
          const SizedBox(height: 15.0),
          passwordFormField(password, addError, removeError),
          const SizedBox(height: 15.0),
          confirmPasswordFormField(password, confirmPassword, addError, removeError),
          const SizedBox(height: 10.0),
          FormErrorsWidget(errors: formErrors),
          const SizedBox(height: 10.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: kPrimaryColor,
            ),
            width: MediaQuery.of(context).size.width * .9,
            child: TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  if (formErrors.isEmpty) {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  }
                }
              },
              child: const Text(
                'Signup',
                style: TextStyle(
                  color: kTextLightColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  
}