class FindTelephone
  def self.digit(character)
    return 2 if ['A', 'B', 'C'].include?(character)
    return 3 if ['D', 'E', 'F'].include?(character)
    return 4 if ['G', 'H', 'I'].include?(character)
    return 5 if ['J', 'K', 'L'].include?(character)
    return 6 if ['M', 'N', 'O'].include?(character)
    return 7 if ['P', 'Q', 'R', 'S'].include?(character)
    return 8 if ['T', 'U', 'V'].include?(character)
    return 9 if ['W', 'X', 'Y', 'Z'].include?(character)
    return character
  end

  def self.solve(word)
    error = validate_length(word)
    return error if error
    response = word.split('').map do |char|
      digit(char)
    end

    response.join
  end

  def self.validate_length(msg)
    return 'limite maximo de 30 caracteres' if msg.size > 30
    return 'minimo de 1 caracter' if msg.size.zero?
  end
end
