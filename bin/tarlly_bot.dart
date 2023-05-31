import 'dart:io';

import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String jarvis = 'jarvis:\n';
  var a = true;
  String usuario = '';

  var myStream = BotClock().tarllyBotStream(1, 10);
  var subscriber = myStream.listen((event) {
    print('                       Javis está ativo a: $event segundos');
  }, onDone: () {
    print('Javis esta sendo finalizado! Faça a ultima pergunta.');
    a = false;
  });

  print('-- Iniciando a jarvis, aguarde..--');
  await BotClock().clock(2);
  print('jarvis:\n Oi :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    await BotClock().clock(1);
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(jarvis + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      await BotClock().clock(2);
      TimeQuestions(usuario).timeQuestion();
    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      await BotClock().clock(2);
      print(jarvis +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(jarvis + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando a jarvis--');
}
