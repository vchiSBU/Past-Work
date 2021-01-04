import unittest
from two_d_point import TwoDPoint
import math

class Quadrilateral:

    def __init__(self, *floats):
        points = TwoDPoint.from_coordinates(list(floats))
        self.__vertices = tuple(points[0:4])

    @property
    def vertices(self):
        return self.__vertices

    def side_lengths(self):
        """Returns a tuple of four floats, each denoting the length of a side of this quadrilateral. The value must be
        ordered clockwise, starting from the top left corner."""
        vertex0 = self.vertices[0]
        vertex1 = self.vertices[1]
        vertex2 = self.vertices[2]
        vertex3 = self.vertices[3]
        side1 = math.sqrt(math.pow(vertex1.x - vertex0.x, 2) + math.pow(vertex1.y - vertex0.y, 2))
        # print(vertex0)
        # print(vertex1)
        # print(vertex1.x - vertex0.x)
        # print(vertex1.y - vertex0.y)
        # print(side1) 
        side2 = math.sqrt(math.pow(vertex0.x - vertex3.x, 2) + math.pow(vertex0.y - vertex3.y, 2))
        side3 = math.sqrt(math.pow(vertex3.x - vertex2.x, 2) + math.pow(vertex3.y - vertex2.y, 2))
        side4 = math.sqrt(math.pow(vertex2.x - vertex1.x, 2) + math.pow(vertex2.y - vertex1.y, 2))
        returnSides = (side1, side2, side3, side4)
        return returnSides

    def smallest_x(self):
        """Returns the x-coordinate of the vertex with the smallest x-value of the four vertices of this
        quadrilateral."""
        vertex0 = self.vertices[0]
        vertex1 = self.vertices[1]
        vertex2 = self.vertices[2]
        vertex3 = self.vertices[3]
        smallest = float('inf')
        if (vertex0.x < smallest):
            smallest = vertex0.x
        if (vertex1.x < smallest):
            smallest = vertex1.x
        if (vertex2.x < smallest):
            smallest = vertex2.x
        if (vertex3.x < smallest):
            smallest = vertex3.x
        return smallest

    def __eq__(self, other: object) -> bool:
        """
        Two Quadrilaterals are equal if their vertices are equal
        """
        if type(other) is Quadrilateral:
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
        return 'Quadrilateral\n(%g, %g)\n(%g, %g)\n(%g, %g)\n(%g, %g)' % (self.vertices()[0].x, self.vertices()[0].y, self.vertices()[1].x, self.vertices()[1].y, self.vertices()[2].x, self.vertices()[2].y, self.vertices()[3].x, self.vertices()[3].y)