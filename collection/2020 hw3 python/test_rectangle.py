import unittest
from unittest import TestCase
from rectangle import Rectangle
from two_d_point import TwoDPoint

class TestRectangle(TestCase):
    def test_center(self):
        self.assertEqual(Rectangle( 5.0, 5.0, 0.0, 5.0, 0.0, 0.0, 5.0, 0.0).center(), TwoDPoint(2.5, 2.5))
        self.assertEqual(Rectangle( 1.0, 0.0, 0.0, 0.0, 0.0, -7.0, 1.0, -7.0).center(), TwoDPoint(0.5, -3.5))

    def test_area(self):
        self.assertEqual(Rectangle( 1.0, 0.0, 0.0, 0.0, 0.0, -5.0, 1.0, -5.0).area(), 5)
        self.assertEqual(Rectangle( 1.0, 0.0, 0.0, 0.0, 0.0, -7.0, 1.0, -7.0).area(), 7)

    def test_eq(self):
        self.assertEqual(Rectangle( 1.0, 0.0, 0.0, 0.0, 0.0, -5.0, 1.0, -5.0), Rectangle( 1.0, 0.0, 0.0, 0.0, 0.0, -5.0, 1.0, -5.0))
        self.assertEqual(Rectangle( 1.0, 0.0, 0.0, 0.0, 0.0, -7.0, 1.0, -7.0), Rectangle( 1.0, 0.0, 0.0, 0.0, 0.0, -7.0, 1.0, -7.0))

if __name__ == "__main__":
    unittest.main()
