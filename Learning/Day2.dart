import 'dart:io';

void main(){
  var friends = ['A', 'B', 'C'];

  friends.insert(3, "1");
  friends.add("D");
  //neu gia tri trong list khong ton tai thi se gay ra loi
  for(var index = 0; index < friends.length; index++){
    print("$index: ${friends[index]}");
  }
  //for-in loop
  for(var friend in friends){
    if(friend == "A"){
      print(friend);
    }
    else{
      print(friend.toLowerCase());
    }
  }

  //switch case statement
  print("Nhap so a: ");
  var a = int.parse(stdin.readLineSync()!);
  print("Nhap so b: ");
  var b = int.parse(stdin.readLineSync()!);
  var result = 0;
  print("Nhap phep tinh: ");
  var operator = stdin.readLineSync()!;
  switch(operator){
    case "+":
      result = a + b;
      break;
    case "-":
      result = a - b;
      break;
    case "*":
      result = a * b;
      break;
    case "/":
      result = a ~/ b;
      break;
    default:
      throw FormatException("Phep tinh khong hop le");
  }
  print("Ket qua: $a $operator $b = $result");

  //switch case expression
  print("Nhap so x: ");
  var x = int.parse(stdin.readLineSync()!);
  print("Nhap so y: ");
  var y = int.parse(stdin.readLineSync()!);
  print("Nhap phep tinh: ");
  var operator2 = stdin.readLineSync()!;
  var result2 = switch(operator2){
    "+" => x + y,
    "-" => x - y,
    "*" => x * y,
    "/" => x ~/ y,
    _ => throw FormatException("Phep tinh khong hop le")
  };
  print("Ket qua: $x $operator2 $y = $result2");

  //while loop
  var sum = 0;
  var n = 100;
  while(n > 0){
    sum += n;
    n--;
  }
  print("Tong tu 1 den 100: $sum");
  //do-while loop
  var sum2 = 0;
  var m = 100;
  do{
    sum2 += m;
    m--;
  }while(m > 0);
  print("Tong tu 1 den 100: $sum2");
  //su khac biet giua while va do-while la do-while se thuc hien it nhat 1 lan
}