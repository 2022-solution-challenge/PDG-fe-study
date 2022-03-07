import 'dart:io';

void main(){
  showData();
}

void showData(){
  startTask();
  accessData();
  fetchData();
}

void startTask(){
  String info1 = 'Start the task';
  print(info1);
}

String accessData(){

  String account;
  //give duration to code
  Duration time = Duration(
    seconds: 3
  );

  if(time.inSeconds > 2){
    Future.delayed(time, (){
      account = '8500';
      print(account);
    });
  }
  else{
    account = 'data';
  }

  return account;
  
}
void fetchData(){
  String info3 = 'fecth the data to client';
  print(info3); 
}

//순서
