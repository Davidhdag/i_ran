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
    1: 'Run',
    2: 'Walk',
    3: 'Bodybuild',
    4: 'Swim',
    5: 'Bike',
    6: 'Other',
  };
