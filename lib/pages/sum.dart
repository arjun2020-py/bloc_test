import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_state_cubit.dart';

class SumScreen extends StatelessWidget {
  const SumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterStateCubit(context),
      child: BlocBuilder<CounterStateCubit, CounterStateInitial>(
        builder: (context, state) {
          final cubit = context.read<CounterStateCubit>();
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text('Calaculator'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: cubit.firstNumberController,
                  decoration: InputDecoration(hintText: 'enter first number'),
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: cubit.secondNumberController,
                  decoration: InputDecoration(hintText: 'enter second number'),
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          cubit.sumCalcualtion();
                        },
                        child: Icon(Icons.add)),
                    ElevatedButton(
                        onPressed: () {
                          cubit.differnceCalauation();
                        },
                        child: Icon(Icons.remove)),
                  ],
                ),
                Text('${cubit.sum}')
              ],
            ),
          );
        },
      ),
    );
  }
}
