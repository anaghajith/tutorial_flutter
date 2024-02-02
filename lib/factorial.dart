import 'dart:io';
void main(){
  stdout.write("Enter a number : ");
  String input=stdin.readLineSync()??"";
  int? number=int.tryParse(input);

  if(number!=null){
    int fac =1;
    for(int i=1;i<=number;i++){
      fac*=i;
    }
    print("Factorial of $number is $fac");
  }else{
    print("Invalid input");
  }
}
