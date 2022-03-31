import 'package:flutter/material.dart';
import 'package:i_ran/components/exercise_card.dart';
import 'package:i_ran/data/dummy_data.dart';
import 'package:i_ran/models/exercise.dart';
import 'package:i_ran/utils/app_routes.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Exercise> exerciseList = DUMMY_EXERCISES;

  @override
  Widget build(BuildContext context) {
    ScrollController? _scrollController;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'I ran',          
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  const SizedBox(
                    height: 300,
                    width: 300,
                  ),
                  Positioned(
                    bottom: 150,
                    right: 0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(AppRoutes.FORM);
                      },
                      child: Text('Start Training'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 300,
                width: 300,
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
