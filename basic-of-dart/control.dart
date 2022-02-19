/// Control flow Statements

main(){
  // variables declearation
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter =3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  //if statement
  if (year >= 2001) {
    print('21st century');
  } else if(year>=1901){
    print('20th century');
  }

  //for iteration
  for(final object in flybyObjects){
    print(object);
  } // like for i in list : python

  for(int month = 1; month <=12 ; month++){
    print('지금은 $month월 입니다.');
  }

  //while loop
  while(year < 2016){
    year += 1;
  }
}
