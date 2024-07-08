import 'package:flutter/material.dart';
import 'package:grocery_app/constants/errors.dart';


TextFormField confirmPasswordFormField(String? password, String? confirmPassword, addError, removeError) {
    return TextFormField(
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Confirm your password',
        labelText: 'Password confirmation',
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 25.0),
          child: Icon(Icons.lock_outline),
        ),
      ),
      obscureText: true,
      onChanged: (value) {
        if (password == confirmPassword && value.isNotEmpty) {
          removeError(error: kPasswordNullError);
          removeError(error: kPasswordMatchError);
        } else if (value.length >= 8) {
          removeError(error: kShortPasswordError);
        }
      },
      onSaved: (newValue) => confirmPassword = newValue.toString(),
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPasswordNullError);
        } else if (password != confirmPassword) {
          addError(error: kPasswordMatchError);
        }
        return null;
      }
    );
  }

  TextFormField passwordFormField(String? password, addError, removeError) {
    return TextFormField(
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Enter your password',
        labelText: 'Password',
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 25.0),
          child: Icon(Icons.lock_outline),
        )
      ),
      obscureText: true,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPasswordNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPasswordError);
        }
        password = value.toString();
      },
      onSaved: (newValue) => password = newValue.toString(),
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPasswordNullError);
        } else if (value.length < 8) {
          addError(error: kShortPasswordError);
        }
        return null;
      }
    );
  }

  TextFormField emailFormField(String? email, addError, removeError) {
    return TextFormField(
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'Enter your email address',
        labelText: 'Email',
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Icon(Icons.email_outlined),
        )
      ),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kemailNullError);
        } else if (emailValidatorRegex.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
      },
      onSaved: (newValue) => email = newValue.toString(),
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kemailNullError);
        } else if (!emailValidatorRegex.hasMatch(value)) {
          addError(error: kInvalidEmailError);
        }
        return null;
      },
    );
  }