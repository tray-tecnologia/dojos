var anagrama = {
  quantidade: function(palavra) {
    var totalCaracteres = palavra.length,
    total = 1;

    for (var i = totalCaracteres; i > 1; i--) {
      console.log('i' + totalCaracteres);
      total *= i;
      console.log('total' + total);
    };
    return total;
  },

  // gerar: function(palavra) {
  //   var combinacoes = [];
  //   var restante = combinacoes
  //   for (var i = 0; i < palavra.length; i++){
  //     letra = palavra[i];
  //     console.log( '->>>>>'+letra)
  //     return letra + anagrama.gerar(palavra.replace(letra, ''))
  //   }
  //   return [palavra];
  // }

  gerar: function(palavra){
    var tamanho = anagrama.quantidade(palavra);
    var combinacoes = [];
    var i = 0;
    while(i < tamanho)
    {
      combinacoes.forEach( function(valor, indice){

        combinacoes.push();
      });
      i++;
    }

  }
};
