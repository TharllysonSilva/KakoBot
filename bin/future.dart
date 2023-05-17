void main() {
  // Future myFuture = Future(() {
  // print('Going back to the future');
  // return 21;
  // }).then((value) => print('The value is $value'));

  // Habilitando a função ser assincrona
  Future<int> myFutureFunc() async {
    print('I have a function in the Future');
    //Para poder esperar o tempo de ducação declarado
    await Future.delayed(Duration(seconds: 5));
    //throw Exception();
    return 12;
  }

  // myFutureFunc()
  //   .then((value) => print('My function value is: $value'))
  //Tratamento de erro
  //  .onError((error, stackTrace) => print('An Error Accurred'))
  // Conclui quando terminar tudo
  //   .whenComplete(() => print('The Future is Over'));

  // Tratamento de prevenções a erros
  Future<int> myFutureErrorFunc(int a, int b) async {
    try {
      if (a > b) {
        throw Exception();
      }
      print('I have a functional Function');
      await Future.delayed(Duration(seconds: 5));
      return 42;
    } catch (e) {
      print('An Error occurred: $e');
      return 42;
    } finally {
      print('The Future Finally is Over');
    }
  }

  myFutureErrorFunc(1, 2).then((value) => print('The value is : $value'));
  print('Done with main');
}
