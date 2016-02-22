def is_leap_year(number):
    return divided_by_four(number) and (not divided_by_one_hundred(number) or divided_by_four_hundred(number))

def divided_by_four(number):
    return divided_by(number, 4)

def divided_by_one_hundred(number):
    return divided_by(number, 100)

def divided_by_four_hundred(number):
    return divided_by(number, 400)

def divided_by(dividend, divisor):
    return (dividend % divisor) == 0

'''
http://dojopuzzles.com/problemas/exibe/ano-bissexto/
http://docs.python-guide.org/en/latest/writing/tests/#unittest
https://www.jeffknupp.com/blog/2013/12/09/improve-your-python-understanding-unit-testing/
'''
