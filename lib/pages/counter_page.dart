import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_state_cubit.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterStateCubit(context),
      child: BlocBuilder<CounterStateCubit, CounterStateState>(
        builder: (context, state) {
          final cubit = context.read<CounterStateCubit>();
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text('Flutter Demo'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    cubit.count.toString(),
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () => cubit.increment(),
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  onPressed: () => cubit.decrment(),
                  tooltip: 'Decrment',
                  child: Icon(Icons.remove),
                )
              ],
              
            ),
          
          );
        },
      ),
    );
  }
}
