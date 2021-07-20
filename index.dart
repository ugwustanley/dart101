
import 'dart:io';
import 'dart:core';


void main(){
    // request user input
    stdout.writeln('type in "+", "*" , "-" or "/" to select operation');

    //get user input
    String operation = stdin.readLineSync().toString();

    //request for first input value
    stdout.writeln('type in your first value');

    //get first input value
    String first_value = stdin.readLineSync().toString();

    //request for second input value
    stdout.writeln('type in your second value');

     //get second input value
    String second_value = stdin.readLineSync().toString();

    //verify that inputs are valid
     bool result = isValueNumeric(first_value , second_value);
    
    //perform operation if valid
     if(result){

       var answer = calculator(int.parse(first_value), int.parse(second_value), operation);

       print("RESULT: " + answer.toString());

     }
     else{

       print("RESULT: one of the inputed value is invalid");

     }     
   
}


// check if input string contains a number
isValueNumeric(first , second){

  if(first == null || second == null){  
    return false;
  }

  if(double.tryParse(first) == null || double.tryParse(second) == null ){
    return false;
  }

  return true ;

}


//makes calculations based on the inputed operation
calculator(a , b , operation ){

    if(operation == "+"){
        return a + b;
    }

    if(operation == "-"){
        return a - b;
    }

    if(operation == "*"){
        return a * b;
    }
    
    if(operation == "/"){
        return a / b;
    }

    // returns an invalid operation message since operation is invalid
    else{
      return "operation "  + operation + " is invalid";
    }
}