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
      appBar: AppBar(title: Text('I ran')),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              controller: _scrollController,
              itemCount: exerciseList.length,
              itemBuilder: (ctx, index) {
                return ExpansionPanelList(
                  children: [
                    ExpansionPanel(
                      headerBuilder: (context, isOpen) {
                        return ExerciseCard(exerciseList[index]);                        
                      },
                      // isExpanded: true,                      
                      body: Text(exerciseList[index].title),                      
                    ),
                  ],
                );
              },
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      ),
    );
  }
}
