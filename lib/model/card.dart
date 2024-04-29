class WordCard {
  String categoryId;
  String question;
  String answer;
  String cardImage;
  List<bool> history;

  WordCard({
    required this.categoryId,
    required this.question,
    required this.answer,
    required this.cardImage,
    required this.history,
  });

  Map<String, dynamic> toJson() {
    return {
      'categoryId': categoryId,
      'question': question,
      'answer': answer,
      'cardImage': cardImage,
      'history': history,
    };
  }

  factory WordCard.fromJson(Map<String, dynamic> json) {
    return WordCard(
      categoryId: json['categoryId'],
      question: json['question'],
      answer: json['answer'],
      cardImage: json['cardImage'],
      history: List<bool>.from(json['history']),
    );
  }
}
