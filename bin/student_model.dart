import 'model.dart';

void main() {
  // List d = [];
  // var s = student();
  // s.name = 'aaa';
  // d.add(s.name);
//  print(studentsdata[3].name);
  studentsdata.add(student(name: 'vicky', rollNo: 22, marks: 99));
  // for (var item in studentsdata) {
  //   print(item.name);
  //   print(item.marks);
  //   print(item.rollNo);
  // }
  print(studentsdata.map((e) => e.name).toList());
  
}
