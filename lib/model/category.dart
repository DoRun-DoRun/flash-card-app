import 'package:flutter/material.dart';

enum CategoryCode {
  animal("동물", "animal", Icons.pets_outlined),
  plant("식물", "plant", Icons.local_florist_outlined),
  food("음식", "food", Icons.fastfood_outlined),
  color("색깔", "color", Icons.color_lens_outlined),
  occupation("직업", "occupation", Icons.work_outline),
  nature("자연", "nature", Icons.forest_outlined),
  transportation("교통", "transportation", Icons.directions_car_outlined),
  family("가족", "family", Icons.family_restroom_outlined),
  activity("활동", "activity", Icons.surfing_outlined),
  culture("문화", "culture", Icons.theater_comedy_outlined);

  final String korean;
  final String english;
  final IconData icon;
  const CategoryCode(this.korean, this.english, this.icon);
}
