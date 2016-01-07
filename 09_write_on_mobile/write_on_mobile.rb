class WriteMobile

  def self.constants
    {
      2 => ['A', 'B', 'C'],
      3 => ['D', 'E', 'F'],
      4 => ['G', 'H', 'I'],
      5 => ['J', 'K', 'L'],
      6 => ['M', 'N', 'O'],
      7 => ['P', 'Q', 'R', 'S'],
      8 => ['T', 'U', 'V'],
      9 => ['W', 'X', 'Y', 'Z'],
      0 => [' ']
    }
  end

  def self.read_char(char)
    phrase = ""
    auxc = ""
    char.split("").each_with_index do |c, idx|

      return self.constants[c][idx] if char.size == 1

      if c != auxc
        phrase << self.constants[c][0]
      else
        # eql = c
        # if idx +1 == char.size && eql == char.size
        #  phrase << self.constants[c]
        # end
      end
    end
    phrase
  end

end
