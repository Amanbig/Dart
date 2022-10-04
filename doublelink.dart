import 'dart:io';
class node{
  int data=0;
  node ?next;
  node ?prev;
  node(){
    next=null;
    prev=null;
  }
}
class link{
  node ?head=null;
  node ?tail=null;
  void insert(){
    node news=new node();
    print('Enter number');
    news.data=int.parse(stdin.readLineSync()!);
    if(head==null){
      head=news;
      tail=news;
      print('Element added');
    }
    else if(head?.next==null){
      head?.next=news;
      news.prev=head;
      tail=news;
      print('Element added');
    }
    else{
      int a=0;
      print('Enter position');
      a=int.parse(stdin.readLineSync()!);
      if(a<0){
        print('Position cannot be negative');
      }
      else if(a==0){
        news.next=head;
        head?.prev=news;
        head=news;
        print('Element added successfully');
      }
      else{
        int c;
        c=-1;
        bool b=true;
        node ?temp=head;
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
          if(temp?.next==null){
            tail?.next=news;
            news.prev=tail;
            tail=news;
            print("Element added successfully");
          }
          else{
            news.next=temp?.next;
            temp?.next?.prev=news;
            news.prev=temp;
            temp?.next=news;
            print("Element added successfully");
          }
        }
        else{
            print('Position not found');
        }
      }
    }
  }
  void deletion(){
    if(head==null){
      print('List is empty');
    }
    else if(head?.next==null){
      head=null;
      tail=null;
      print('Element deleted successfully');
    }
    else{
      int a=0;
      print('Enter position');
      a=int.parse(stdin.readLineSync()!);
      if(a<0){
        print('Position cannot be negative');
      }
      else if(a==0){
        head=head?.next;
        head?.prev=null;
        print('Element deleted successfully');
      }
      else{
        int b=-1;
        bool c=true;
        node ?temp=head;
        while(temp!=null){
          b++;
          if(b==a-1){
            c=true;
            break;
          }
          else{
            c=false;
          }
          temp=temp.next;
        }
        if(c){
          if(temp?.next==tail){
            tail?.prev=null;
            temp?.next=null;
            tail=temp;
            print('Elemnet deleted successfully');
          }
          else{
            node ?temps=temp?.next;
            temp?.next?.next?.prev=temp;
            temp?.next=temp.next?.next;
            temps?.next=null;
            temps?.prev=null;
            print('Element deleted successfully');
          }
        }
        else{
          print('Position not found');
        }
      }
    }
  }
  void display(){
    if(head==null){
      print('List is empty');
    }
    else{
    node ?temp=head;
    while(temp!=null){
      print(temp.data);
      temp=temp.next;
    }
    }
  }
}
void main(){
  int a=0;
  link l=new link();
  while(true){
    print('Enter 1-add node');
    print('Enter 2-delete node');
    print('Enter 3-display');
    print('Enter 4-exit');
    a=int.parse(stdin.readLineSync()!);
    switch(a){
      case 1:
      l.insert();
      break;
      case 2:
      l.deletion();
      break;
      case 3:
      l.display();
      break;
      case 4:
      exit(0);
      break;
    }
  }
}