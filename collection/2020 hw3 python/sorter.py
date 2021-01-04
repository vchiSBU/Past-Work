from two_d_point import TwoDPoint
from quadrilateral import Quadrilateral

class ShapeSorter:

    def sort(self, *Quadrilateral):
        sortedQuads = sorted(list(Quadrilateral), key = Quadrilateral.smallest_x())
        return sortedQuads
