import unittest
from unittest import TestCase
from two_d_point import TwoDPoint
from quadrilateral import Quadrilateral

class TestQuadrilateral(TestCase):
    def test_side_lengths(self):
        self.assertTupleEqual(Quadrilateral(1.0, 0.0, 0.0, 0.0, 0.0, -1.0, 1.0, -1.0).side_lengths(), (1, 1, 1, 1))
        self.assertTupleEqual(Quadrilateral(2.0, 0.0, 0.0, 0.0, 0.0, -2.0, 2.0, -2.0).side_lengths(), (2, 2, 2, 2))

    def test_smallest_x(self):
        self.assertEqual(Quadrilateral( 1.0, 0.0, 0.0, 0.0, 0.0, -8.0, 1.0, -8.0).smallest_x(), 0)
        self.assertEqual(Quadrilateral( 2.0, 0.0, 0.0, 0.0, 0.0, -8.0, 2.0, -8.0).smallest_x(), 0)

    def test_eq(self):
        self.assertEqual(Quadrilateral(2.7, 1.6, 1.2, 3.4, 0.8, 1.0, 3.3, 5.4), Quadrilateral(2.7, 1.6, 1.2, 3.4, 0.8, 1.0, 3.3, 5.4))
        self.assertEqual(Quadrilateral(2.5, 1.5, 1.0, 3.0, 1.0, 1.0, 3.5, 5.5), Quadrilateral(2.5, 1.5, 1.0, 3.0, 1.0, 1.0, 3.5, 5.5))
if __name__ == "__main__":
    unittest.main()