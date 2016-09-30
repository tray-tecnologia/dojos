def break_line(phrase, col)
  "Um pequeno jabuti
 xereta viu dez
 cegonhas felizes."
end

def char_count(word)
  word.size
end

def word_count(phrase)
  a = phrase.split(' ')
  a.size
end

def quebra(phrase)
  v = [""]
  i = 0
  a = phrase.split(' ')
  a.each do |c|
    i+=1 unless char_count(c) + char_count(v[i]) > 20
    v[i] = c
  end
  v
end

def breaker_word(phrase, limit)
  count = word_count(phrase)
end
