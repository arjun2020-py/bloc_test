import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'counter_state_state.dart';

class CounterStateCubit extends Cubit<CounterStateInitial> {
  CounterStateCubit(this.context) : super(CounterStateInitial());

  BuildContext context;
  TextEditingController firstNumberController = TextEditingController(),
      secondNumberController = TextEditingController();
  int count = 0;
  int sum = 0;
  void increment() {
    count++;
    emit(CounterStateInitial());
  }

  void decrment() {
    count--;
    emit(CounterStateInitial());
  }

  void sumCalcualtion() {
    final int firstNumber = int.parse(firstNumberController.text);
    final int secondNumber = int.parse(secondNumberController.text);

    sum = firstNumber + secondNumber;

    emit(CounterStateInitial());

    print('sum is--------${sum}');
  }

  void differnceCalauation() {
    final int firstNumber = int.parse(firstNumberController.text);
    final int secondNumber = int.parse(secondNumberController.text);

    sum = firstNumber - secondNumber;
    emit(CounterStateInitial());
  }
}
