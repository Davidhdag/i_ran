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