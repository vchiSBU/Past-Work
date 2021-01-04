import unittest
from unittest import TestCase
from square import Square
from quadrilateral import Quadrilateral
from two_d_point import TwoDPoint

class TestSquare(TestCase):
    def test_snap(self):
        self.assertEqual(Square( 5.0, 5.0, 0.0, 5.0, 0.0, 0.0, 5.0, 0.0).snap(), Quadrilateral( 5.0, 5.0, 0.0, 5.0, 0.0, 0.0, 5.0, 0.0))
        self.assertEqual(Square( 1.9, 1.9, 0.0, 1.9, 0.0, 0.0, 1.9, 0.0).snap(), Quadrilateral( 2.0, 2.0, 0.0, 2.0, 0.0, 0.0, 2.0, 0.0))

    def test_eq(self):
        self.assertEqual(Square( 5.0, 5.0, 0.0, 5.0, 0.0, 0.0, 5.0, 0.0), Square( 5.0, 5.0, 0.0, 5.0, 0.0, 0.0, 5.0, 0.0))
        self.assertEqual(Square( 10.0, 10.0, 0.0, 10.0, 0.0, 0.0, 10.0, 0.0), Square( 10.0, 10.0, 0.0, 10.0, 0.0, 0.0, 10.0, 0.0))

if __name__ == "__main__":
    unittest.main()