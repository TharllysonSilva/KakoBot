class GoodManners {
  String question;
  bool isThisGoodManners = false;
  String tarllyBot = 'Jarvis: \n';
  GoodManners(this.question);

  bool isThisManners() {
    if (question.contains('oi') ||
        question.contains('ola') ||
        question.contains('Oi') ||
        question.contains('obrigado') ||
        question.contains('obrigada') ||
        question.contains('Obrigado') ||
        question.contains('Obrigada') ||
        question.contains('bom') ||
        question.contains('boa') ||
        question.contains('dia') ||
        question.contains('tarde') ||
        question.contains('noite') ||
        question.contains('de nada') ||
        question.contains('De nada')) {
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }
}
