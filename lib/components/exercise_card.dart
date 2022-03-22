import 'package:flutter/material.dart';
import 'package:i_ran/models/exercise.dart';

class ExerciseCard extends StatefulWidget {

  final Exercise exercise;
  ExerciseCard(this.exercise);

  @override
  State<ExerciseCard> createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<ExerciseCard> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isOpen = !isOpen;
        });
      },
      child: ListTile(
        leading: Container(
          child: widget.exercise.image,                                
        ),        
        title: Text(widget.exercise.title),
        subtitle: Text(widget.exercise.type),
      ),
    );
  }
}
