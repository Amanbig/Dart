import 'dart:io';
class sum{
  int a=0,b=0;
  void input(){
    print('Enter first number\n');
    a=int.parse(stdin.readLineSync()!);
    print('Enter second number\n');
    b=int.parse(stdin.readLineSync()!);
  }
  void display(){
    int c=a+b;
    print('Sum is $c\n');
  }
}
void main(){
  sum s=new sum();
  s.input();
  s.display();
}