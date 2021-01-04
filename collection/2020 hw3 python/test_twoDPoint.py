import unittest
from unittest import TestCase
from two_d_point import TwoDPoint


class TestTwoDPoint(TestCase):
    def test_eq(self):
        self.assertTrue(TwoDPoint(5,4) == TwoDPoint(5,4))
        self.assertFalse(TwoDPoint(1,3) == TwoDPoint(1,9))
    def test_ne(self):
        self.assertTrue(TwoDPoint(5,4) != TwoDPoint(1,0))
        self.assertFalse(TwoDPoint(1,3) != TwoDPoint(1,3))
    def test_add(self):
        self.assertEqual(TwoDPoint(5,4) + TwoDPoint(1,0), TwoDPoint(6,4))
        self.assertEqual(TwoDPoint(1,3) + TwoDPoint(1,9), TwoDPoint(2,12))
    def test_sub(self):
        self.assertEqual(TwoDPoint(5,4) - TwoDPoint(1,0), TwoDPoint(4,4))
        self.assertEqual(TwoDPoint(1,3) - TwoDPoint(1,9), TwoDPoint(0,-6))
    def test_from_coordinates(self):
        self.assertEqual(TwoDPoint.from_coordinates([1, 2, 3, 4]), [TwoDPoint(1,2), TwoDPoint(3,4)])
        self.assertEqual(TwoDPoint.from_coordinates([7, 8, 9, 10]), [TwoDPoint(7,8), TwoDPoint(9,10)])
if __name__ == "__main__":
    unittest.main()