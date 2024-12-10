import 'dart:async';
import "dart:io";
import 'dart:math';

bool isPrime(int n) {
  if (n <= 1)
    return false;
  else {
    int bound = sqrt(n).toInt();
    for (int i = 2; i <= bound; i++) {
      if (n % i == 0) return false;
    }
    return true;
  }
}


void main(){
  print("Nhap so nguyen n: ");
  var n = int.parse(stdin.readLineSync()!);
  if(isPrime(n)){
    print("$n la so nguyen to");
  }
  else{
    print("$n khong phai la so nguyen to");
  }

  var num = [1, 2, 3, 45, 6 ,77 ,12, 47];
  showPrimeNum(num);
}

void showPrimeNum(List<int> num){
  print("Cac so nguyen to la: \n");
  var count = 0;
  for(int i = 0; i < num.length; i++){
    if(isPrime(num[i])){
      print(num[i]);
      count++;
    }
  }
  print("\nCo tat ca $count so nguyen to");
}