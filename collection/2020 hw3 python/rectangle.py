import unittest
from quadrilateral import Quadrilateral
from two_d_point import TwoDPoint
import math

class Rectangle(Quadrilateral):

    def __init__(self, *floats):
        super().__init__(*floats)
        if not self.__is_member():
            raise TypeError("A rectangle cannot be formed by the given coordinates.")

    def __is_member(self):
        """Returns True if the given coordinates form a valid rectangle, and False otherwise."""
        point0 = self.vertices[0]
        point1 = self.vertices[1]
        point2 = self.vertices[2]
        point3 = self.vertices[3]
        
        oneDiag = math.sqrt(math.pow(point0.x - point2.x, 2) + math.pow(point0.y - point2.y, 2))
        twoDiag = math.sqrt(math.pow(point1.x - point3.x, 2) + math.pow(point1.y - point3.y, 2))
        return (oneDiag == twoDiag)

    def center(self):
        """Returns the center of this rectangle, calculated to be the point of intersection of its diagonals."""
        point0 = self.vertices[0]
        point1 = self.vertices[1]
        point2 = self.vertices[2]
        point3 = self.vertices[3]
        midpointX = (point0.x + point2.x)/2
        midpointY = (point0.y + point2.y)/2
        pointToReturn = TwoDPoint(midpointX, midpointY)
        return pointToReturn

    def area(self):
        """Returns the area of this rectangle. The implementation invokes the side_lengths() method from the superclass,
        and computes the product of this rectangle's length and width."""
        sidelengths = self.side_lengths()
        areaToReturn = sidelengths[0] * sidelengths[1]
        return areaToReturn

    def __eq__(self, other: object) -> bool:
        """
        Two Rectangles are equal if their vertices are equal
        """
        if type(other) is Rectangle:
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
        return 'Rectangle\n(%g, %g)\n(%g, %g)\n(%g, %g)\n(%g, %g)' % (self.vertices()[0].x, self.vertices()[0].y, self.vertices()[1].x, self.vertices()[1].y, self.vertices()[2].x, self.vertices()[2].y, self.vertices()[3].x, self.vertices()[3].y)