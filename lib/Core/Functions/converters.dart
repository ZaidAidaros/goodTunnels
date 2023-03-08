
import 'dart:math';

class ZNumSysConverter{

static const List base32Num=[
  '0','1','2','3','4','5','6','7','8','9',
  'A','B','C','D','E','F','G','H','I','J',
  'K','L','M','N','O','P','Q','R','S','T',
  'U','V'
];




intToBase32(int number){
  String si='';
  if(number<0){
    si='-';
    number=number*(-1);
  }
  String b32="";
  int reminder=0;
  while(number>0){
    reminder = number%32;
    b32=base32Num[reminder]+b32;
    number=((number-reminder)/32).toInt();
  }
  return si+b32;
}


base32ToInt(String bas32){
  int si=1;
  if(bas32.startsWith('-')){
    si=(-1);
    bas32=bas32.substring(1);
  }
  int number=0;
  for(int i=0; i<bas32.length;i++){
    number+= (base32Num.indexOf(bas32[i]))*(pow(32.0,(bas32.length-1-i))).toInt();
  }
  return si*number;
}

}

