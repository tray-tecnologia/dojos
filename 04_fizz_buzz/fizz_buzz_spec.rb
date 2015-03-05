require 'rspec'
require_relative 'fizz_buzz'

RSpec.describe FizzBuzz do

  it 'Test Sum => 2 + 2' do
    expect(FizzBuzz.sum(2, 2)).to eq(4)
  end

  it 'Test Sum => 2 + 1' do
    expect(FizzBuzz.sum(2, 1)).to eq(3)
  end

  it 'Return Number' do
    expect(FizzBuzz.return_fizz_number(1)).to eq(1)
  end


  it 'Return Eh Divisivel por 3' do
    expect(FizzBuzz.eh_divisivel?(9,3)).to eq(true)
  end

  it 'Return Eh Divisivel por 5' do
    expect(FizzBuzz.eh_divisivel?(15,5)).to eq(true)
  end

  it 'Return Fizz' do
    expect(FizzBuzz.return_fizz_number(3)).to eq('Fizz')
  end

  it 'Return Buzz' do
    expect(FizzBuzz.return_buzz(5)).to eq('Buzz')
  end

  it 'Return Fizz Buzz' do
    expect(FizzBuzz.return_fizz_buzz(15)).to eq('FizzBuzz')
  end

  it 'Return Fizz Number' do
    expect(FizzBuzz.return_fizz_buzz_number(3)).to eq('Fizz')
  end

  it 'Return Buzz Number' do
    expect(FizzBuzz.return_fizz_buzz_number(5)).to eq('Buzz')
  end

  it 'Return FizzBuzz Number' do
    expect(FizzBuzz.return_fizz_buzz_number(15)).to eq('FizzBuzz')
  end

  it 'Return Number' do
    expect(FizzBuzz.return_fizz_buzz_number(4)).to eq(4)
  end

  it 'Return Array 1 to 15' do
    expect(FizzBuzz.return_array).to eq([1,2,'Fizz',4,'Buzz','Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz'])
  end



end