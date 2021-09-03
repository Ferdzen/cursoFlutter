import 'dart:io';

void main(List<String> arguments){
  
  var estado = true;
  var loop = 0;
  var opcao = 0;
  var nome = <String>[];
  var idade = <String>[];
  while(estado == true){
    
    print('----------------menu----------------');
    print('1.Cadastro de Pessoa................');
    print('2.Impressão de Pessoa...............');
    print('3.Calcular maioridade...............');
    print('4.Sair..............................');
    print('------------------------------------');
    var recebeOpcao = stdin.readLineSync();
    opcao = int.parse(recebeOpcao);

    if(opcao == 1){
      print('Digite seu nome:');
      nome.add(stdin.readLineSync());

      print('Digite sua idade:');
      idade.add(stdin.readLineSync());

    }else if(opcao == 2){
      loop--;
      imprimir(nome[loop], idade[loop]);
    }else if(opcao == 3){
      
      loop--;
      var recebeIdade = int.parse(idade[loop]);
      print(calcular(nome[loop], recebeIdade));
    }else{
      print('Fim de programa');
      estado = false;
    }
    
    loop++;
  }
}

void imprimir(String nome, String idade){
  print('Nome: $nome \nIdade: $idade');
}

String calcular(String nome, int recebeIdade){
  
  if(recebeIdade>18){
    return '$nome consultado já é maior de idade';
  }else{
    recebeIdade = 18 - recebeIdade;
    return 'Falta $recebeIdade para $nome ser maior de idade.';
  }
}