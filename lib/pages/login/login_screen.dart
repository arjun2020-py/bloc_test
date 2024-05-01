import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/login_cubit_cubit.dart';
import 'widget/custom_text_filed_widget.dart';
import 'widget/custom_text_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubitCubit(context),
      child: BlocBuilder<LoginCubitCubit, LoginCubitState>(
        builder: (context, state) {
          final cubit = context.read<LoginCubitCubit>();
          return Scaffold(
              body: Form(
            key: cubit.formKey,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(),
                  width: MediaQuery.sizeOf(context).width,
                  child: Image.asset(
                    'assets/images/login.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                CustomTextWidget(
                  text: 'Login',
                  fontSize: 35,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTexfiledWidget(
                  validator: (value) => cubit.usernameValidator(value!),
                  controller: cubit.uernameController,
                  hintText: 'uername',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTexfiledWidget(
                    validator: (value) => cubit.passwrodValidator(value!),
                    controller: cubit.passwrodController,
                    hintText: 'password'),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  child: ElevatedButton(
                    onPressed: () {
                      cubit.loginButtonClick();
                    },
                    child: Text('Login'),
                  ),
                )
              ],
            ),
          ));
        },
      ),
    );
  }
}
