import 'dart:io';

void Main() {
  print('Welcome to dart');
  stdout.write('enter your name');
  var name = stdin.readLineSync();
  print('welcome,$name');
  new Human();//creating an class object
  
}

class Human {
  Human();
}
