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

  goodManners() {
    if (question.contains('Bom dia') || question.contains('bom dia')) {
      print(tarllyBot + 'Bom dia Flor do dia!');
    } else if (question.contains('Boa tarde') ||
        question.contains('boa tarde')) {
      print(tarllyBot + 'Opa siow, boa tarde');
    } else if (question.contains('Boa noie') ||
        question.contains('boa noite')) {
      print(tarllyBot + 'Uma bela noite, não é mesmo?');
    } else if (question.contains('oi') ||
        question.contains('Oi') ||
        question.contains('Olá') ||
        question.contains('olá')) {
      print(tarllyBot + 'Muito prazer!');
    } else if (question.contains('Obrigado') ||
        question.contains('obrigado') ||
        question.contains('Obrigada') ||
        question.contains('obrigada')) {
      print(tarllyBot + 'De nada, disponha c:');
    }
  }
}
