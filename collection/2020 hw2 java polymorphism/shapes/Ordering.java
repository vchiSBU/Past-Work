import java.util.*;

public class Ordering {

    static class XLocationComparator implements Comparator<TwoDShape> {
        @Override public int compare(TwoDShape o1, TwoDShape o2) {
            double leftMosto1 = 0.0;
            double leftMosto2 = 0.0;
            if (o1 instanceof Circle) {
                Circle toCompareo1 = (Circle)o1;
                double[] coors = toCompareo1.center().coordinates();
                leftMosto1 = coors[0] - toCompareo1.getRadius();
            }
            else {
                Quadrilateral toCompareo1 = (Quadrilateral)o1;
                leftMosto1 = toCompareo1.getVertices()[0].coordinates()[0];
                if (toCompareo1.getVertices()[1].getXcor() < leftMosto1) {
                    leftMosto1 = toCompareo1.getVertices()[1].coordinates()[0];
                }
                if (toCompareo1.getVertices()[2].getXcor() < leftMosto1) {
                    leftMosto1 = toCompareo1.getVertices()[2].coordinates()[0];
                }
                if (toCompareo1.getVertices()[3].getXcor() < leftMosto1) {
                    leftMosto1 = toCompareo1.getVertices()[2].coordinates()[0];
                }
            }
            if (o2 instanceof Circle) {
                Circle toCompareo2 = (Circle)o2;
                double[] coors = toCompareo2.center().coordinates();
                leftMosto2 = coors[0] - toCompareo2.getRadius();
            }
            else {
                Quadrilateral toCompareo2 = (Quadrilateral)o2;
                leftMosto2 = toCompareo2.getVertices()[0].coordinates()[0];
                if (toCompareo2.getVertices()[1].getXcor() < leftMosto2) {
                    leftMosto2 = toCompareo2.getVertices()[1].coordinates()[0];
                }
                if (toCompareo2.getVertices()[2].getXcor() < leftMosto2) {
                    leftMosto2 = toCompareo2.getVertices()[2].coordinates()[0];
                }
                if (toCompareo2.getVertices()[3].getXcor() < leftMosto2) {
                    leftMosto2 = toCompareo2.getVertices()[2].coordinates()[0];
                }
            }
            if (leftMosto1 < leftMosto2) {
                return -1;
            }
            else if (leftMosto1 > leftMosto2) {
                return 1;
            }
            else {
                return 0;
            }
        }
    }

    static class AreaComparator implements Comparator<SymmetricTwoDShape> {
        @Override public int compare(SymmetricTwoDShape o1, SymmetricTwoDShape o2) {
            double Areao1 = 0.0;
            double Areao2 = 0.0;
            if (o1 instanceof Circle) {
                Circle toCompareo1 = (Circle)o1;
                Areao1 = toCompareo1.area();
            }
            else {
                Quadrilateral toCompareo1 = (Quadrilateral)o1;
                double side1 = Math.sqrt(Math.pow((toCompareo1.getVertices()[0].getXcor() - toCompareo1.getVertices()[1].getXcor()), 2) +
                                  Math.pow((toCompareo1.getVertices()[0].getYcor() - toCompareo1.getVertices()[1].getYcor()), 2));
                double side2 = Math.sqrt(Math.pow((toCompareo1.getVertices()[1].getXcor() - toCompareo1.getVertices()[2].getXcor()), 2) +
                                   Math.pow((toCompareo1.getVertices()[1].getYcor() - toCompareo1.getVertices()[2].getYcor()), 2));
                Areao1 = side1 * side2;
            }
            if (o2 instanceof Circle) {
                Circle toCompareo2 = (Circle)o2;
                Areao2 = toCompareo2.area();
            }
            else {
                Quadrilateral toCompareo2 = (Quadrilateral)o2;
                double side1 = Math.sqrt(Math.pow((toCompareo2.getVertices()[0].getXcor() - toCompareo2.getVertices()[1].getXcor()), 2) +
                                  Math.pow((toCompareo2.getVertices()[0].getYcor() - toCompareo2.getVertices()[1].getYcor()), 2));
                double side2 = Math.sqrt(Math.pow((toCompareo2.getVertices()[1].getXcor() - toCompareo2.getVertices()[2].getXcor()), 2) +
                                   Math.pow((toCompareo2.getVertices()[1].getYcor() - toCompareo2.getVertices()[2].getYcor()), 2));
                Areao2 = side1 * side2;
            }
            if (Areao1 < Areao2) {
                return -1;
            }
            else if (Areao1 > Areao2) {
                return 1;
            }
            else {
                return 0;
            }
        }
    }

    static class SurfaceAreaComparator implements Comparator<ThreeDShape> {
        @Override public int compare(ThreeDShape o1, ThreeDShape o2) {
            double Areao1 = 0.0;
            double Areao2 = 0.0;
            if (o1 instanceof Sphere) {
                Sphere toCompareo1 = (Sphere)o1;
                double radius = toCompareo1.getRadius();
                Areao1 = 4 * Math.pow(radius, 2) * Math.PI;
            }
            else {
                Cuboid toCompare1 = (Cuboid)o1;
                ThreeDPoint point0 = toCompare1.getVertices()[0];
                ThreeDPoint point1 = toCompare1.getVertices()[1];
                ThreeDPoint point2 = toCompare1.getVertices()[2];
                ThreeDPoint point6 = toCompare1.getVertices()[6];
                double sidezeroone = Math.sqrt(Math.pow(point0.getXcor() - point1.getXcor(), 2) +
                                                                         Math.pow(point0.getYcor() - point1.getYcor(), 2) +
                                                                         Math.pow(point0.getZcor() - point1.getZcor(), 2));
                double sideonetwo = Math.sqrt(Math.pow(point1.getXcor() - point2.getXcor(), 2) +
                                                                        Math.pow(point1.getYcor() - point2.getYcor(), 2) +
                                                                        Math.pow(point1.getZcor() - point2.getZcor(), 2));
                double sideonesix = Math.sqrt(Math.pow(point1.getXcor() - point6.getXcor(), 2) +
                                                                      Math.pow(point1.getYcor() - point6.getYcor(), 2) +
                                                                      Math.pow(point1.getZcor() - point6.getZcor(), 2));
                double onesetofsurface = 2*(sidezeroone * sideonetwo);
                double anothersetofsurface = 2*(sideonetwo * sideonesix);
                double lastsetofsurface = 2*(sideonesix * sidezeroone);
                Areao1 = onesetofsurface + anothersetofsurface + lastsetofsurface;
            }
            if (o1 instanceof Sphere) {
                Sphere toCompareo2 = (Sphere)o2;
                double radius = toCompareo2.getRadius();
                Areao2 = 4 * Math.pow(radius, 2) * Math.PI;
            }
            else {
                Cuboid toCompare2 = (Cuboid)o2;
                ThreeDPoint point0 = toCompare2.getVertices()[0];
                ThreeDPoint point1 = toCompare2.getVertices()[1];
                ThreeDPoint point2 = toCompare2.getVertices()[2];
                ThreeDPoint point6 = toCompare2.getVertices()[6];
                double sidezeroone = Math.sqrt(Math.pow(point0.getXcor() - point1.getXcor(), 2) +
                                                                         Math.pow(point0.getYcor() - point1.getYcor(), 2) +
                                                                         Math.pow(point0.getZcor() - point1.getZcor(), 2));
                double sideonetwo = Math.sqrt(Math.pow(point1.getXcor() - point2.getXcor(), 2) +
                                                                        Math.pow(point1.getYcor() - point2.getYcor(), 2) +
                                                                        Math.pow(point1.getZcor() - point2.getZcor(), 2));
                double sideonesix = Math.sqrt(Math.pow(point1.getXcor() - point6.getXcor(), 2) +
                                                                      Math.pow(point1.getYcor() - point6.getYcor(), 2) +
                                                                      Math.pow(point1.getZcor() - point6.getZcor(), 2));
                double onesetofsurface = 2*(sidezeroone * sideonetwo);
                double anothersetofsurface = 2*(sideonetwo * sideonesix);
                double lastsetofsurface = 2*(sideonesix * sidezeroone);
                Areao2 = onesetofsurface + anothersetofsurface + lastsetofsurface;
            }
            if (Areao1 < Areao2) {
                return -1;
            }
            else if (Areao1 > Areao2) {
                return 1;
            }
            else {
                return 0;
            }
        }
    }

    
    static <T> void copy(Collection<? extends T> source, Collection<T> destination) {
        destination.addAll(source);
    }

    public static void main(String[] args) {
        List<TwoDShape>          shapes          = new ArrayList<>();
        List<SymmetricTwoDShape> symmetricshapes = new ArrayList<>();
        List<ThreeDShape>        threedshapes    = new ArrayList<>();

        /*
         * uncomment the following block and fill in the "..." constructors to create actual instances. If your
         * implementations are correct, then the code should compile and yield the expected results of the various
         * shapes being ordered by their smallest x-coordinate, area, volume, surface area, etc. */

        TwoDPoint r1 = new TwoDPoint(0, 0);
        TwoDPoint r2 = new TwoDPoint(2, 0);
        TwoDPoint r3 = new TwoDPoint(2, 1);
        TwoDPoint r4 = new TwoDPoint(0, 1);
        List<TwoDPoint> list1 = new ArrayList<>();
        list1.add(r1);
        list1.add(r2);
        list1.add(r3);
        list1.add(r4);

        symmetricshapes.add(new Rectangle(list1));

        r1 = new TwoDPoint(0, 0);
        r2 = new TwoDPoint(4, 0);
        r3 = new TwoDPoint(4, 4);
        r4 = new TwoDPoint(0, 4);
        List<TwoDPoint> list2 = new ArrayList<>();
        list2.add(r1);
        list2.add(r2);
        list2.add(r3);
        list2.add(r4);

        symmetricshapes.add(new Square(list2));

        TwoDPoint centerPoint = new TwoDPoint(0,0);
        double radius = 2.0;

        symmetricshapes.add(new Circle(centerPoint.coordinates()[0], centerPoint.coordinates()[1], radius));

        copy(symmetricshapes, shapes); // note-1 //
        shapes.add(new Quadrilateral(2.0, 0.0, 2.0, 1.0, -2.0, 1.0, -2.0, 0.0));

        // sorting 2d shapes according to various criteria
        shapes.sort(new XLocationComparator());
        symmetricshapes.sort(new XLocationComparator());
        symmetricshapes.sort(new AreaComparator());

        // sorting 3d shapes according to various criteria
        Collections.sort(threedshapes);
        threedshapes.sort(new SurfaceAreaComparator());

        /*
         * if your changes to copy() are correct, uncommenting the following block will also work as expected note that
         * copy() should work for the line commented with 'note-1' while at the same time also working with the lines
         * commented with 'note-2' and 'note-3'. */

        
        List<Number> numbers = new ArrayList<>();
        List<Double> doubles = new ArrayList<>();
        Set<Square>        squares = new HashSet<>();
        Set<Quadrilateral> quads   = new LinkedHashSet<>();

        copy(doubles, numbers); // note-2 //
        copy(squares, quads);   // note-3 //

    }
}