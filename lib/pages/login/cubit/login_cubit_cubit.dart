import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import '../../../Api/api_utils.dart';
import '../../counter_page.dart';
import '../model/login_model.dart';

part 'login_cubit_state.dart';

class LoginCubitCubit extends Cubit<LoginCubitState> {
  LoginCubitCubit(this.context) : super(LoginCubitInitial());

  BuildContext context;
  TextEditingController uernameController = TextEditingController(),
      passwrodController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  usernameValidator(String value) {
    if (value.isEmpty) {
      return 'Please enter vailed username';
    }
  }

  passwrodValidator(String value) {
    if (value.isEmpty) {
      return 'Please enter correct passwrod';
    }
  }

  loginButtonClick() async {
    if (formKey.currentState!.validate()) {
      if (uernameController.text.isNotEmpty &&
          passwrodController.text.isNotEmpty) {
        
        
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyHomePage(),
            ));
      }
    }
  }
}
