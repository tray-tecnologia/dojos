import unittest
from leap_year import is_leap_year, divided_by_four, divided_by_one_hundred, divided_by_four_hundred

class PrimesTestCase(unittest.TestCase):

    def test_400_is_leap_year(self):
        self.assertTrue(is_leap_year(400))

    def test_1600_is_leap_year(self):
        self.assertTrue(is_leap_year(1600))

    def test_1732_is_leap_year(self):
        self.assertTrue(is_leap_year(1732))

    def test_1888_is_leap_year(self):
        self.assertTrue(is_leap_year(1888))

    def test_1944_is_leap_year(self):
        self.assertTrue(is_leap_year(1944))

    def test_2008_is_leap_year(self):
        self.assertTrue(is_leap_year(2008))

    def test_1742_is_leap_year(self):
        self.assertFalse(is_leap_year(1742))

    def test_1889_is_leap_year(self):
        self.assertFalse(is_leap_year(1889))

    def test_1951_is_leap_year(self):
        self.assertFalse(is_leap_year(1951))

    def test_2011_is_leap_year(self):
        self.assertFalse(is_leap_year(2011))

    def test_8_is_divided_for_4(self):
        self.assertTrue(divided_by_four(8))

    def test_5_is_not_divided_for_4(self):
        self.assertFalse(divided_by_four(5))

    def test_200_is_divided_for_100(self):
        self.assertTrue(divided_by_one_hundred(200))

    def test_201_is_not_divided_for_100(self):
        self.assertFalse(divided_by_one_hundred(201))

    def test_400_is_divided_for_400(self):
        self.assertTrue(divided_by_four_hundred(400))

    def test_401_is_not_divided_for_400(self):
        self.assertFalse(divided_by_four_hundred(401))

if __name__ == '__main__':
    unittest.main()
