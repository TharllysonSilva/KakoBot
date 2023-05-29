import 'dart:async';

void main() async {
  Stream myStream(int interval, [int? maxCount]) async* {
    int i = 1;
    while (i != maxCount) {
      print("Counting: $i");
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print('The Stream is finished');
  }

  var tarllyStream = myStream(1).asBroadcastStream();
  StreamSubscription mySubscription = tarllyStream.listen((event) {
    if (event.isEven) {
      print('This number is Even!');
    }
  }, onError: (e) {
    print('On error happend: $e');
  }, onDone: () {
    print('The subscriber is gone.');
  });

  tarllyStream.map((event) => 'Subscriber 2 watching: $event').listen(print);

  await Future.delayed(Duration(seconds: 3));
  mySubscription.pause();
  print('Stream paused');
  await Future.delayed(Duration(seconds: 3));
  mySubscription.resume();
  print('Stream resumed');
  await Future.delayed(Duration(seconds: 3));
  mySubscription.cancel();
  print('Stream canceled');

  print('Main is finished');
}
