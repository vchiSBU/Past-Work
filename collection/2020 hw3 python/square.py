import unittest
from rectangle import Rectangle
from quadrilateral import Quadrilateral
import math

class Square(Rectangle):

    def __init__(self, *floats):
        super().__init__(*floats)
        if not self.__is_member():
            raise TypeError("A square cannot be formed by the given coordinates.")

    def __is_member(self):
        """Returns True if the given coordinates form a valid rectangle, and False otherwise."""
        s = self.side_lengths()
        return s[0] == s[1] == s[2] == s[3]

    def snap(self):
        """Snaps the sides of the square such that each corner (x,y) is modified to be a corner (x',y') where x' is the
        integer value closest to x and y' is the integer value closest to y. This, of course, may change the shape to a
        general quadrilateral, hence the return type. The only exception is when the square is positioned in a way where
        this approximation will lead it to vanish into a single point. In that case, a call to snap() will not modify
        this square in any way."""
        newVertices = []
        newVertices.append(math.floor(self.vertices[0].x + 0.5))
        newVertices.append(math.floor(self.vertices[0].y + 0.5))
        newVertices.append(math.floor(self.vertices[1].x + 0.5))
        newVertices.append(math.floor(self.vertices[1].y + 0.5))
        newVertices.append(math.floor(self.vertices[2].x + 0.5))
        newVertices.append(math.floor(self.vertices[2].y + 0.5))
        newVertices.append(math.floor(self.vertices[3].x + 0.5))
        newVertices.append(math.floor(self.vertices[3].y + 0.5))

        toReturn = Quadrilateral(*newVertices)
        newShapeSideLengths = toReturn.side_lengths()
        if ((newShapeSideLengths[0] == 0) or (newShapeSideLengths[1] == 0) or (newShapeSideLengths[2] == 0) or (newShapeSideLengths[3] == 0)):
            return self
        return toReturn

    def __eq__(self, other: object) -> bool:
        """
        Two Squares are equal if their vertices are equal
        """
        if type(other) is Square:
            vertex0 = self.vertices[0]
            vertex1 = self.vertices[1]
            vertex2 = self.vertices[2]
            vertex3 = self.vertices[3]

            compare_vertex0 = other.vertices[0]
            compare_vertex1 = other.vertices[1]
            compare_vertex2 = other.vertices[2]
            compare_vertex3 = other.vertices[3]
        
            return (vertex0 == compare_vertex0 and vertex1 == compare_vertex1 and vertex2 == compare_vertex2 and vertex3 == compare_vertex3)
        else:
            return False

    def __str__(self) -> str:
        return 'Square\n(%g, %g)\n(%g, %g)\n(%g, %g)\n(%g, %g)' % (self.vertices()[0].x, self.vertices()[0].y, self.vertices()[1].x, self.vertices()[1].y, self.vertices()[2].x, self.vertices()[2].y, self.vertices()[3].x, self.vertices()[3].y)

def test_eq(self):
    self.assertEqual(Square(0.0, 0.0, 1.0, 0.0, 1.0, -1.0, 0.0, -1.0) == Square(0.0, 0.0, 1.0, 0.0, 1.0, -1.0, 0.0, -1.0), True)
    self.assertEqual(Square(0.0, 0.0, 1.0, 0.0, 1.0, -1.0, 0.0, -1.0) == Square(0.0, 0.0, 2.0, 0.0, 2.0, -2.0, 0.0, -2.0), False)

if __name__ == "__main__":
    unittest.main()