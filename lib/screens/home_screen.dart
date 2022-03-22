import 'package:flutter/material.dart';
import 'package:i_ran/components/exercise_card.dart';
import 'package:i_ran/data/dummy_data.dart';
import 'package:i_ran/models/exercise.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Exercise> exerciseList = DUMMY_EXERCISES;

  @override
  Widget build(BuildContext context) {
    ScrollController? _scrollController;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        title: const Text(
          'I ran',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 400,
                width: 400,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  controller: _scrollController,
                  itemCount: exerciseList.length,
                  itemBuilder: (ctx, index) {
                    return ExerciseCard(exercise: exerciseList[index]);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
