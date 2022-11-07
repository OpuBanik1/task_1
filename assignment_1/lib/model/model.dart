import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModelUpdate {
  IconData icon;
  String name;
  ModelUpdate(this.icon, this.name);

  static List<ModelUpdate> userUpdate = [
    ModelUpdate(
      Icons.rocket_launch,
      'Popular',
    ),
    ModelUpdate(Icons.star, 'New'),
    ModelUpdate(
      Icons.food_bank,
      'Tranding',
    ),
    ModelUpdate(Icons.star, 'Begain'),
  ];
}
