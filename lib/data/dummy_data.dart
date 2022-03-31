import 'package:flutter/material.dart';
import '../models/exercise.dart';

final DUMMY_EXERCISES = [
  Exercise(
    title: 'Lil run',
    type: type[0].toString(),
    date: DateTime.now(),
    duration: 20.3,
    image: Image.asset('assets/images/runing.png'),
  ),
  Exercise(
    title: 'Just walking',
    type: type[1].toString(),
    date: DateTime.now(),
    duration: 40.5,
    image: Image.asset('assets/images/walking.png'),
  ),
  Exercise(
    title: 'Lightweight baby',
    type: type[2].toString(),
    date: DateTime.now(),
    duration: 60.0,
    image: Image.asset('assets/images/bodybuilding.png'),
  ),
  Exercise(
    title: 'Swiming',
    type: type[3].toString(),
    date: DateTime.now(),
    duration: 60.0,
    image: Image.asset('assets/images/swiming.png'),
  ),
  Exercise(
    title: 'Lil ride',
    type: type[4].toString(),
    date: DateTime.now(),
    duration: 120.5,
    image: Image.asset('assets/images/biking.png'),
  ),
  Exercise(
    title: 'Push ups and calistenics',
    type: type[5].toString(),
    date: DateTime.now(),
    duration: 45.0,
    image: Image.asset('assets/images/other.png'),
  ),
];
