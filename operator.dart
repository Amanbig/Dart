import 'dart:io';
class sum{
  int a=0;
  void input(){
    print('Enter number\n');
    a=int.parse(stdin.readLineSync()!);
  }
  sum operator +(sum n2){
    sum n3=new sum();
    n3.a=n2.a+a;
    return n3;
  }
  void display(){
    print('The sum is $a\n');
  }
}
void main(){
  sum n1=new sum();
  sum n2=new sum();
  sum n3=new sum();
  n1.input();
  n2.input();
  n3=n1+n2;
  n3.display();
}