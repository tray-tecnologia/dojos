describe('Anagrama', function() {
	it('Retornar a quantidade de anagramas', function() {
    expect(anagrama.quantidade('biro')).toBe(24);
	});
  it('Retornar2 a quantidade de anagramas', function() {
    expect(anagrama.quantidade('biros')).toBe(120);
  });
  it('gerar2 a quantidade de anagramas', function() {
    expect(anagrama.gerar('a')).toEqual(["a"]);
  });
  it('gerar3 a quantidade de anagramas', function() {
    expect(anagrama.gerar('ab')).toEqual(["ab", "ba"]);
    expect(anagrama.gerar('abc')).toEqual(["abc", "cba" ,"cab" , "acb", "bac","bca"]);
  })
});



/*
  x;*/
