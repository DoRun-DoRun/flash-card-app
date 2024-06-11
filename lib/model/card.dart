import 'dart:convert';

import 'package:flash_card_app/model/category.dart';

class WordCard {
  CategoryCode category;
  String korWord; // 한국어 단어
  String engWord; // 영어 단어
  String displayWord;
  String image; // 이미지 경로 (URL 또는 로컬 파일 경로)
  List<bool> history; // 단어 이력
  bool isToggle;

  // 생성자
  WordCard({
    required this.category,
    required this.korWord,
    required this.engWord,
    required this.displayWord,
    required this.image,
    required this.history,
    required this.isToggle,
  });

  // JSON으로 변환
  Map<String, dynamic> toJson() => {
        'category': category.toJson(),
        'korWord': korWord,
        'engWord': engWord,
        'displayWord': displayWord,
        'image': image,
        'history': history,
        'isToggle': isToggle,
      };

  // JSON에서 객체 생성
  factory WordCard.fromJson(Map<String, dynamic> json) => WordCard(
        category: CategoryCode.fromJson(json['category']),
        korWord: json['korWord'],
        engWord: json['engWord'],
        displayWord: json['displayWord'],
        image: json['image'],
        history: List<bool>.from(json['history']),
        isToggle: json['isToggle'],
      );

  static List<WordCard> fromJsonList(List<String> jsonList) {
    return jsonList
        .map((jsonString) => WordCard.fromJson(jsonDecode(jsonString)))
        .toList();
  }
}

enum Direction { right, left, none }
