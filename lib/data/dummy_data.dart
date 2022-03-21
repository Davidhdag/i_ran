import 'package:flutter/material.dart';
import '../models/exercise.dart';

Map<int, String> _type = {
  1 : 'Run',
  2 : 'Walk',
  3 : 'Bodybuild',
  4 : 'Swim',
  5 : 'Bike',
  6 : 'Other',
};

final DUMMY_EXERCISES = [
  Exercise(
    title: 'Lil run',
    type: _type['1'].toString(),
    date: DateTime.now(),
    duration: 20.3,
    image: Image.asset('runing.png'),
  ),
  Exercise(
    title: 'Just walking',
    type: _type['2'].toString(),
    date: DateTime.now(),
    duration: 40.5,
    image: Image.asset('walking.png'),
  ),
  Exercise(
    title: 'Lightweight baby',
    type: _type['3'].toString(),
    date: DateTime.now(),
    duration: 60.0,
    image: Image.asset('bodybuilding.png'),
  ),
  Exercise(
    title: 'Swiming',
    type: _type['4'].toString(),
    date: DateTime.now(),
    duration: 60.0,
    image: Image.asset('swiming.png'),
  ),
  Exercise(
    title: 'Lil ride',
    type: _type['5'].toString(),
    date: DateTime.now(),
    duration: 120.5,
    image: Image.asset('biking.png'),
  ),
  Exercise(
    title: 'Push ups and calistenics',
    type: _type['6'].toString(),
    date: DateTime.now(),
    duration: 45.0,
    image: Image.asset('other.png'),
  ),
];
