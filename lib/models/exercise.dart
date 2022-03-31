import 'package:flutter/material.dart';

class Exercise {
  final String title;
  final String type;
  final DateTime date;
  final double duration;
  final Image image;

  Exercise({
    required this.title,
    required this.type,
    required this.date,
    required this.duration,
    required this.image,
  });

}
  Map<int, String> type = {
    0: 'Run',
    1: 'Walk',
    2: 'Bodybuild',
    3: 'Swim',
    4: 'Bike',
    5: 'Other',
  };
