import 'package:flutter/material.dart';
import '../models/exercise.dart';
import 'package:intl/intl.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({
    Key? key,
    required this.exercise,
  }) : super(key: key);

  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ExpansionTile(
        leading: Container(
          width: 50,
          child: exercise.image,
        ),
        title: Text(exercise.title),
        subtitle: Text(exercise.type),
        children: [
          ListTile(
            leading: Text(exercise.type),
            // title: Text(exercise.type),
            trailing: Text(
              DateFormat('dd/MM/yyy hh:mm').format(exercise.date),
            ),
          )
        ],
        trailing: SizedBox.shrink(),
      ),
    );
  }
}
