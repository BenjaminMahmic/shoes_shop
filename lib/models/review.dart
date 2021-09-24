class Review {
  final String userName;
  final String userImageUrl;
  final double rate;
  final DateTime date;
  final String reviewContent;

  Review({
    required this.userName,
    required this.userImageUrl,
    required this.rate,
    required this.date,
    required this.reviewContent,
  });
}
