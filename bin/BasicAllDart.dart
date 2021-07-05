import 'package:BasicAllDart/BasicAllDart.dart' as BasicAllDart;
import 'dart:io';
import 'dart:async';
import 'dart:collection';

enum colors {red,green,blue}

void main(List<String> arguments) {
  //boolean datatype

  bool isOn;
  //var isOn;  --> bool type
  isOn=true;
  print('isOn = ${isOn}');

  isOn=false;
  print('isOn = ${isOn}');

  print('isOn is a ${isOn.runtimeType}');

  //num datatype

  num age=35;
  int people=6; //int
  double temp=28.55; //double

  //parse and int datatype

  int test=int.parse('22');
  print('test = ${test}');

  int err=int.parse('22.00',onError: (source) =>0);
  print(err);

  int dogyears=7;
  num dogage=age*dogyears;
  print('Your age in dog years is ${dogage}');

  //String datatype

  String hello='Hello World!';
  print(hello);

  String name= 'Mayur Botre';
  print(name);

  String firstname= name.substring(0,5);
  print(hello+' '+firstname);

  int index=name.indexOf(' ');
  String lastname= name.substring(index).trim();
  print(lastname);

  print(name.length);

  print(name.contains('#'));

  List parts=name.split(' ');
  print(parts);
  print(parts.length);
  print(parts[0]);
  print(parts[1]);

  //const type

  hello='Hello';
  const String world='World!';
  // world='Mayur';   -->error
  print(hello+' '+world);

  //user input

  stdout.write('What is your name ?\r\n');
  String? myName=stdin.readLineSync();
  myName!.isEmpty ? stdout.write('String is empty!'):stdout.write(myName);

  // collections

  //enums

  print(colors.values);
  print(colors.red);

  //list

  List testing=[1,2,3,4,5,6,7,8,9,0];
  print(testing.length);
  print('first variable in list : ${testing[0]}');

  List things=[];
  things.add(1);
  things.add('cats');
  things.add(true);
  things.add(22.55);
  print(things);

  List<int> numbers=[];
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(4);
  numbers.add(5);
  numbers.add(6);
  numbers.add(2);
  numbers.add(1);
  print(numbers);

  //set

  //unordered does not ccontains duplicaate

  Set<int> nums=new Set<int>();
  nums.add(7);
  nums.add(3);
  nums.add(1);
  nums.add(2);
  nums.add(4);
  nums.add(8);
  nums.add(4);
  print(nums.length);
  print(nums);

  //Queue

  //ordered, no index, insert and delete from start and end

  Queue item=new Queue();
  item.add(1);
  item.add(2);
  item.add(4);
  item.add(7);
  item.add(9);
  item.add(3);

  print(item);

  item.removeFirst();

  print(item);

  item.removeLast();

  print(item);

  //Map

  Map family={'I':'Akash','wife':'Shrusti','father':'Jay','mother':'Sheetal','son':'Nikhil','daughter':'Priya','grandson':'Mahesh'};

  //Map<String, String> family1=new Map<String, String>();
  //family1.putIfAbsent('I', () => 'Akash');

  print(family);
  print('Keys are :${family.keys}');
  print('Values are :${family.values}');
  print(family['mother']);


  //Flow control

  //assert

  print('Started');
  int age1=15;
  assert(age1==15);
  print('Finished');

  //if

  if(age1==43)  print('Finished if age equal 43');

  if(age1!=43)  print('Finished if age not equal 43');

  if(age1>43)  print('Finished if age greater than 43');

  if(age1<43)  print('Finished if age less than 43');

  //else if

  if(age1>=43)  print('Finished if age greater than equal to 43');
  else  print('Finished if age less than 43');

  if(age1!=43){
    print('Finished age is not 43');
    print('wrong age');
  }
  else{
    print('Your age is 43');
    print('finished! Great');
  }

  //scope   --->  scope of variable
  //switch

  switch(age1){
    case 10:
      print('Finished your age is 10');
      break;
    case 20:
      print('Finished your age is 20');
      break;
    case 30:
      print('Finished your age is 30');
      break;
    case 40:
      print('Finished your age is 40');
      break;
    case 50:
      print('Finished your age is 50');
      break;
    case 60:
      print('Finished your age is 60');
      break;
    default:
      print('Finished your age is not here');
      break;
  }

  //do while

  int value;
  int init=1;
  int max=5;
  value=init;
  do{
    print('value = ${value}');
    value++;
  }while(value<=max);
  print('---Done with do-while loop---');

  value=0;
  do{
    print('value = ${value}');
    value++;
    if(value==5){
      print('value is 5');
      continue;
    }
    if(value>10){
      print('value is greater than 10');
      break;
    }
  }while(true);
  print('---Done with do-while loop---');


  //while

  value=0;
  max=10;
  while(value<=max){
    print('value = ${value}');
    value++;
  }
  print('---Done with while loop---');

  //forEach

  List peoples=['Ajay','Nikhil','Akash','Parth','Rajveer','Priya','Shruti','Mayur','Saloni','Sanket'];
  for(int i=0;i<peoples.length;i++){
    print('peoples : ${peoples[i]}');
  }
  print('---Done with for loop---');
  peoples.forEach((pers) {
    print('persons : ${pers}');
  });
  print('---Done with forEach loop---');

  //functions

  testFun();
  sayHello('Hello');

  print('your age in dog years is ${dogYearsAge(35)}');

  int wall1=squareFeet(10,10);
  int wall2=squareFeet(10,20);
  int wall3=squareFeet(10,10);
  int wall4=squareFeet(10,20);
  int cealing=squareFeet(20,10);

  print('Paint needed to color the house is ${paintNeeded(wall1,wall2,wall3,wall4,cealing)} gallons');

  //optional parameteres
  sayHelloToUser('Amar');
  sayHelloToUser();

  download('myFile.txt');
  download('myData.txt',true);

  //named parameters

  int footage1=squareFoot1(width:20,length:10);
  print('Footage is ${footage1}');

  download('myFile');
  download('myData');

  //function as object

  age=45;
  var dogyear=calcYear;
  print('Your age in dog years is ${dogyear(age:44,multiplier:7)}');

  //anonymous function

  (){print('Hello World');};
  List persons=['Akash','Nikhil','Mayur','Shekhar','Akshay','Sanket'];
  persons.forEach(print);
  print('---------------------------');
  persons.forEach((name){
    print(name);
  });
  print('---------------------------');
  /*persons.where((name){
    switch(name){
      case 'Akshay': return true;
      case 'Akash': return false;
      case 'Sanket': return true;
    }
  }).forEach(print);*/


  //Error -> program failure
  //Exception -> can be handled

  try {
    int age2;
    int dogYear1 = 7;

    print(age*dogYear1);
  }
  on NoSuchMethodError{
    print('Sorry that\'s not going to happen. ');
  }
  catch(e){
    print(e.toString());
  }
  finally{
    print('Finally block');
  }


  //throwing your own exception

  try {
    int age3;
    int dogYear2 = 7;
    if(age==null) throw new NullThrownError();
    print(age*dogYear2);
  }
  on NullThrownError{
    print('Sorry the value was null. ');
  }
  on NoSuchMethodError{
    print('Sorry that\'s not going to happen. ');
  }
  catch(e){
    print(e.toString());
  }
  finally{
    print('Finally block');
  }


}
void testFun(){
  print('testing...');
}
void sayHello(String hello){
  print('Function says ${hello}');
}

int dogYearsAge(int age){
  return age*7;
}
int squareFeet(int width,int length){
  return width*length;
}
double paintNeeded(int wall1,int wall2,int wall3,int wall4,int ceiling){
  int footage=wall1+wall2+wall3+wall4+ceiling;
  return footage/30;
}

void sayHelloToUser([String name='']){
  if(name.isNotEmpty) name=name.padLeft(name.length+1);
  print('Hello ${name}');
}

void download(String file,[bool open=false]){
  print('Downloading ${file}');
  if(open) print('Opening ${file}');
}

int squareFoot1({required int width,required int length}){
  return width*length;
}

void download1(String file,{int port = 80}){
  print('Downloading ${file} on port ${port}');
}
int calcYear({required int age,required int multiplier}){
  return age*multiplier;
}
