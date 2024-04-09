class Card {
  String categoryId;
  String question;
  String answer;
  String cardImage;
  List<bool> history;

  Card({
    required this.categoryId,
    required this.question,
    required this.answer,
    required this.cardImage,
    required this.history,
  });
}