/**
 *The Dart Type System
 */


//function
void printInts(List<int> a) => print(a);

void main(){
  //list에 type을 명시해 줘야함. -> Similar with generic of Java
  var list = <int>[];

  list.add(1);
  list.add(2);

  printInts(list);
}


//Q1. What is Soundness? 
// -> Soundness is about ensuring your program can’t get into certain invalid states. A sound type system means you can never get into a state where an expression evaluates to a value that doesn’t match the expression’s static type. 
// -> https://stackoverflow.com/questions/49360792/what-is-a-sound-programming-language