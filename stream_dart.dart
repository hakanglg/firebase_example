import 'dart:async';

main() {
  // myStreamFunction().listen((event) {
  //   print(event);
  // });

  StreamController _myStreamController = StreamController();

  void functionForStreamController() async {
    for (int i = 0; i < 7; i++) {
      await Future.delayed(Duration(milliseconds: 500));
      _myStreamController.sink.add(i + 1);
      if (i == 1) {
        _myStreamController.addError("Bir Hata Oluştu");
      }
    }

    _myStreamController.close();
  }

  functionForStreamController();

  _myStreamController.stream.listen((event) {
    print(event * 10);
  }, onDone: () {
    print("Stream SONA ERDİ!");
  }, onError: (error) {
    print(error);
  }, cancelOnError: true);
}
