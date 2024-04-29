import 'dart:convert';

import 'package:flash_card_app/model/card.dart';
import 'package:flash_card_app/repository/base_shared_repository.dart';


class CardRepository extends BaseSharedRepository<WordCard> {
  @override
  WordCard fromJson(Map<String, dynamic> jsonMap) {
    return WordCard.fromJson(jsonMap);
  }

  @override
  String toJson(WordCard value) {
    return json.encode(value.toJson());
  }
}
