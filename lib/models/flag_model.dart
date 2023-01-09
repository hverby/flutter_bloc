
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class Flag extends Equatable{
  final Color first;
  final Color second;
  final Color third;

  Flag({required this.first, required this.second, required this.third});

  @override
  List<Object?> get props => [first, second, third];

  static List<Flag> flagList = [
    Flag(first: Colors.orange, second: Colors.white, third: Colors.green),
    Flag(first: Colors.blue, second: Colors.white, third: Colors.red),
    Flag(first: Colors.red, second: Colors.yellow, third: Colors.green),
    Flag(first: Colors.green, second: Colors.yellow, third: Colors.red),
    Flag(first: Colors.green, second: Colors.white, third: Colors.green)
  ];

  static Flag defaultFlag = Flag(first: Colors.grey,
  second: Colors.grey, third: Colors.grey);
}