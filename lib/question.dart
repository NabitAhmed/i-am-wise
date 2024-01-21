class Question {
  late String questionTitle;
  late String image;
  late bool answer;

  Question({required String ques, required String img, required bool ans}) {
    questionTitle = ques;
    image = img;
    answer = ans;
  }
}
