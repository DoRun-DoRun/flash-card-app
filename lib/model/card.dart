import 'package:flash_card_app/model/category.dart';

class WordCard {
  CategoryCode category;
  String korWord; // 한국어 단어
  String engWord; // 영어 단어
  String image; // 이미지 경로 (URL 또는 로컬 파일 경로)
  List<bool> history; // 단어 이력

  // 생성자
  WordCard({
    required this.category,
    required this.korWord,
    required this.engWord,
    required this.image,
    required this.history,
  });

  // JSON에서 모델 객체로 변환
  factory WordCard.fromJson(Map<String, dynamic> json) {
    return WordCard(
      category: json['category'],
      korWord: json['korWord'],
      engWord: json['engWord'],
      image: json['image'],
      history: List<bool>.from(json['history']),
    );
  }

  // 모델 객체를 JSON 형식으로 변환
  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'korWord': korWord,
      'engWord': engWord,
      'image': image,
      'history': history,
    };
  }
}
