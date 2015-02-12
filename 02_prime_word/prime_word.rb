require 'prime'

class PrimeWord

  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def is_prime?
    Prime.instance.prime?(sum)
  end

  def sum
    total = 0
    array = self.string.split('')
    array.each { |a| total += PrimeWord.get_from_letter(a)}
    total
  end

  def self.lower_letters
    letters(('a'..'z'), 1)
  end

  def self.upper_letters
    letters(('A'..'Z'), 27)
  end

  def self.letters(range, init)
    hash = {}
    letters = (range)
    letters.each_with_index { |letter, i| hash[letter] = i+init }
    hash
  end

  def self.hash_letters
    hash = {}
    lower = self.lower_letters
    upper = self.upper_letters
    hash = lower.merge!(upper)
    hash
  end

  def self.get_from_letter(letter)
    hash_letters[letter]
  end

end