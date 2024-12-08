import "dart:io";

void main(){
  String message = 'Hello, World!';
  print(message);
  var name = 'NhuY';
  print("\nHello $name");
  // +, -, *, / cho kết quả chính xác dạng số thực nếu muốn chia nguyên thì dùng ~/,
  // chia dư thì dùng %
  var a = 550;
  var b = 155.5;
  print("$a ~/ $b = ${a ~/ b}");
  print("$a % $b = ${a % b}");
  //"!" ở cuối -> buộc khác null
  var fullName = stdin.readLineSync()!;
  print("Hello $fullName");

  //chuyển đổi dữ liệu
  var age = int.parse(stdin.readLineSync()!);
  print("Tuoi: $age");

  //chuyen doi lam tron n (2 so) chu so sau dau ","
  var height = double.parse(stdin.readLineSync()!);
  print("Chieu cao: ${height.toStringAsFixed(2)}");

  //kieu du lieu List
  var friends = ['A', 'B', 'C'];
  print("Phan tu dau: ${friends.first}");
  //<ten list>.<phuong thuc can thuc thi tren list>
  //them phan tu vao cuoi
  friends.add("D");
  print(friends);
  friends.reversed;
  //tao list kieu du lieu object (khong nen dung)
  var abc = [];
  abc.add("value");
  abc.add(123);
  abc.add(true);
  //nen tao list co kieu du lieu cu the
  var def = <String>[];
}