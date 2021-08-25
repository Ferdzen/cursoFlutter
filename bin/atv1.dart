import 'package:atv1/atv1.dart' as atv1;
import 'dart:io';

void main(List<String> arguments) {
  /*Cadastrando funcionários elegíveis para aumento de salário SE:
  1. Salário for <= 1500.00 ou ter + de 2 anos de empresa. Aumento de 10%.
  2. Funcionários que recebem + que 1500.00 também podem ser elegíveis para aumento SE 
  tiverem + de 4 anos de empresa e seu salário não passar de 5000.00. Aumento de 7.5%.
  OBS: Um funcionário não pode se encaixar em ambos requisitos de aumento.
  3. Se funcionário se encaixar nos requisitos, imprimir nome e quantidade a ser aumentada.
  */

  print("Insira o nome do funcionário:");
  var nome = stdin.readLineSync();
  
  print("Informe o tempo de empresa do funcionário:");
  var entradaTempo = stdin.readLineSync();
  var tempoEmpresa = int.parse(entradaTempo);

  print("Informe o salário funcionário:");
  var entradaSalario = stdin.readLineSync();
  var salario = double.parse(entradaSalario);

  if(tempoEmpresa > 2){
    
    if(salario<= 1500.00){
      var aumento = salario *0.1;
      salario = salario + aumento;

      print('Funcionário $nome receberá ${aumento} de aumento, seu novo salário será um total de ${salario}.');
    }else if(tempoEmpresa > 4){
      var aumento = salario *0.075;
      salario = salario + aumento;
      
      print('Funcionário $nome receberá ${aumento} de aumento, seu novo salário será um total de ${salario}.');
    }

  }else{
    if(salario<= 1500.00){
      var aumento = salario *0.1;
      salario = salario + aumento;

      print('Funcionário $nome receberá ${aumento} de aumento, seu novo salário será um total de ${salario}.');
    }else{
      print('Funcionário não elegível para aumento.');
    }

}
}