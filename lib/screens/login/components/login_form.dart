import 'package:flutter/material.dart';
import 'package:grocery_app/common/widgets/form_errors.dart';
import 'package:grocery_app/constants/colors.dart';
import 'package:grocery_app/constants/errors.dart';
import 'package:grocery_app/screens/otp/otp.dart';


class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> formErrors = [];
  String ?email, password;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          emailFormField(),
          const SizedBox(height: 15.0),
          passwordFormField(),
          const SizedBox(height: 5.0),
          FormErrorsWidget(errors: formErrors),
          const SizedBox(height: 5.0),
          Row(
            children: [
              Checkbox.adaptive(
                value: rememberMe, 
                activeColor: kPrimaryColor,
                onChanged: (value) {
                setState(() {
                  rememberMe = value!;
                });
              }),
              const Text('Remember me'),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: const Text('Forgot password?'),
              ),
            ],
          ),
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
                  Navigator.popAndPushNamed(context, OTPScreen.routeName);
                }
              },
              child: const Text('Login', style: TextStyle(color: kTextLightColor),),
            ),
          ),
        ],
      ),
    );
  }

  TextFormField passwordFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Password",
        hintText: "Enter your password",
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 25.0),
          child: Icon(Icons.lock_outline),
        ),
      ),
      obscureText: true,
      onChanged: (value) {
        if (value.isNotEmpty && formErrors.contains(kPasswordNullError)) {
          setState(() {
            formErrors.remove(kPasswordNullError);
          });
        } else if (value.length >= 8 && formErrors.contains(kShortPasswordError)) {
          setState(() {
            formErrors.remove(kShortPasswordError);
          });
        }
      },
      onSaved: (newValue) => password = newValue,
      validator: (value) {
        if ((value == null || value.isEmpty) && !formErrors.contains(kPasswordNullError)) {
          setState(() {
            formErrors.add(kPasswordNullError);
          });
        } else if (value!.length < 8 && !formErrors.contains(kShortPasswordError)) {
          setState(() {
            formErrors.add(kShortPasswordError);
          });
        }
        return null;
      },
    );
  }

  TextFormField emailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Email",
        hintText: "Enter your email address",
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 25.0),
          child: Icon(Icons.email_outlined),
        ),
      ),
      onChanged: (value) {
        if (value.isEmpty && formErrors.contains(kemailNullError)) {
          setState(() {
            formErrors.remove(kemailNullError);
          });
        } else if (emailValidatorRegex.hasMatch(value) && formErrors.contains(kInvalidEmailError)) {
          setState(() {
            formErrors.remove(kInvalidEmailError);
          });
        }
      },
      onSaved: (newValue) => email = newValue,
      validator: (value) {
        if ((value == null || value.isEmpty) && !formErrors.contains(kemailNullError)) {
          setState(() {
            formErrors.add(kemailNullError);
          });
        } else if (!emailValidatorRegex.hasMatch(value!) && !formErrors.contains(kInvalidEmailError)) {
          setState(() {
            formErrors.add(kInvalidEmailError);
          });
        }
        return null;
      },
    );
  }
}