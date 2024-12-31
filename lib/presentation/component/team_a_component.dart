
import 'package:basketball_counter_app/presentation/controller/Cubit/counter_cubit.dart';
import 'package:basketball_counter_app/presentation/controller/Cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class ComponentTeamA extends StatelessWidget {
  const ComponentTeamA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit,CounterState>(builder:(context, state) =>
    Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        const  Text(
            'Team A',
            style: TextStyle(
              fontSize: 32,
            ),
          ),
          Text(
            "${ BlocProvider.of<CounterCubit>(context).counterA}",

            // "${state.index}",
            style:const TextStyle(
              fontSize: 150,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding:const EdgeInsets.all(8),
              backgroundColor: Colors.orange,
              minimumSize:const Size(150, 50),
            ),
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).teamIncrement(team: "A", buttonNumber: 1);


            },
            child: const Text(
              'Add 1 Point ',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              minimumSize:const Size(150, 50),
            ),
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).teamIncrement(team: "A", buttonNumber: 2);

            },
            child:const Text(
              'Add 2 Point',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              minimumSize: const Size(150, 50),
            ),
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).teamIncrement(team: "A", buttonNumber: 3);

            },
            child:const Text(
              'Add 3 Point ',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}