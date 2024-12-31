import 'package:basketball_counter_app/presentation/controller/Cubit/counter_cubit.dart';
import 'package:basketball_counter_app/presentation/controller/Cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/widget/custom_button.dart';
import '../component/team_a_component.dart';
import '../component/team_b_component.dart';

class HomePage extends StatelessWidget {
 const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Points Counter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 500,
                child: const ComponentTeamA(),
              ),
              Container(
                height: 500,
                child: const VerticalDivider(
                  indent: 50,
                  endIndent: 50,
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              const ComponentTeamB(),
            ],
          ),
          CustomButton(
            text: 'Reset',
            onPressed: () {
               BlocProvider.of<CounterCubit>(context).removeCounter();
            },
          ),
        ],
      ),
    );
  }
}
