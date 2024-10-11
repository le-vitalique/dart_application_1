import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main(List<String> arguments) {
  print('Hello world: ${dart_application_1.calculate()}!');

  print('\n');

  getData().then((value)
  {
    print(value);
  });
}

Future<List<String>> getData()
{
  return Future.delayed(Duration(seconds: 2), () {
    return ['Александр', 'Мария', 'Никита'];
  });
}
