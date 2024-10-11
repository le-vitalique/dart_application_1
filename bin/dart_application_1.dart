import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

void main(List<String> arguments) {
  print('Hello world: ${dart_application_1.calculate()}!');

  getData(3).then((value) {
    print(value);
  }).catchError((error) {
    print(error);
  }).whenComplete(() {
    print('whenComplete');
  });

  //sleep(Duration(seconds: 1));
}

Future<List<String>> getData([int delay = 1]) {
  return Future.delayed(Duration(seconds: delay), () {
    if (delay > 2) {
      return Future.error('timeout');
    }
    return ['Александр', 'Мария', 'Никита'];
  });
}
