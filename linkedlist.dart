import 'dart:io';
class node{
  int data=-1;
  node ?next;
  node(){
    next=null;
  }
}
class link{
  node ?start;
  void insert(){
    node news=new node();
    print('Enter number ');
    news.data=int.parse(stdin.readLineSync()!);
    if(start==null){
      start=news;
      print('Number inserted successfully ');
    }
    else if(start?.next==null){
      start?.next=news;
      print('Number inserted successfully ');
    }
    else{
      int a=0;
      bool b=true;
      int c=-1;
      node ?temp=start;
      print('Enter position to insert ');
      a=int.parse(stdin.readLineSync()!);
      if(a<0){
        print('Position cannot be negative ');
      }
      else if(a==0){
        news.next=start;
        start=news;
        print('Element added successfully ');
      }
      else{
      while(temp!=null){
        c++;
        if(c==a-1){
          b=true;
          break;
        }
        else{
          b=false;
        }
        temp=temp.next;
      }
      if(b){
          news.next=temp?.next;
          temp?.next=news;
          print('Element added successfully ');
      }
      else{
        temp=start;
        if(c+1==a){
          temp?.next=news;
          print('Element added successfully ');
        }
        else{
          print('Position not found ');
        }
      }
    }}
  }
  void deletion(){
    if(start==null){
      print('list is empty ');
    }
    else if(start?.next==null){
      start=null;
      print('Element deleted successfully ');
    }
    else{
      int a=0;
      bool b=true;
      int c=-1;
      print('Enter position ');
      a=int.parse(stdin.readLineSync()!);
      if(a<0){
        print('Position cannnot be negative ');
      }
      else if(a==0){
        node ?temp=start;
        start=start?.next;
        temp=null;
        print('Element deleted successfully ');
      }
      else{
        node ?temp=start;
        while(temp!=null){
          c++;
          if(c==a-1){
            b=true;
            break;
          }
          else{
            b=false;
          }
          temp=temp.next;
        }
        if(b){
            node ?temps=temp?.next;
            temp?.next=temp.next?.next;
            temps=null;
            print('Element deleted successfully ');
        }
        else{
          print('Element not found ');
        }
      }
    }
  }
  void display(){
    if(start==null){
      print('list is empty ');
    }
    else{
      node ?temp=start;
      while(temp!=null){
        print(temp.data);
        temp=temp.next;
      }
    }
  }
}
void main(){
  int a=0;
  link s=new link();
  while(true){
    print('Enter 1-add ');
    print('Enter 2-delete ');
    print('Enter 3-display ');
    print('Enter 4-exit ');
    a=int.parse(stdin.readLineSync()!);
    switch(a){
      case 1:
      s.insert();
      break;
      case 2:
      s.deletion();
      break;
      case 3:
      s.display();
      break;
      case 4:
      exit(0);
      break;
      default:
      print('No macth to your selectin ');
      break;
    }
  }
}