import java.util.ArrayList;
import java.util.List;

public class Rectangle extends Quadrilateral implements SymmetricTwoDShape {

    //private TwoDPoint[] vertices = new TwoDPoint[4];

    public Rectangle(List<TwoDPoint> vertices) {
        super(vertices);
    }
    
    public TwoDPoint[] getVertices() {
        return super.getVertices();
    }

	/**
     * The center of a rectangle is calculated to be the point of intersection of
     * its diagonals.
     *
     * @return the center of this rectangle.
     */
    @Override
    public Point center() {
        TwoDPoint point1 = this.getVertices()[0];
        TwoDPoint point2 = this.getVertices()[2];
        
        TwoDPoint centerPoint = new TwoDPoint(
            (point1.coordinates()[0] + point2.coordinates()[0] / 2),
            (point1.coordinates()[1] + point2.coordinates()[1] / 2));
        return centerPoint;
    }

    @Override
    public boolean isMember(List<? extends Point> vertices) {
        TwoDPoint point1 = (TwoDPoint)vertices.get(0);
        TwoDPoint point2 = (TwoDPoint)vertices.get(1);
        TwoDPoint point3 = (TwoDPoint)vertices.get(2);
        TwoDPoint point4 = (TwoDPoint)vertices.get(3);
        /* List<TwoDPoint> toSet = new ArrayList<TwoDPoint>();
        toSet.add(point1);
        toSet.add(point2);
        toSet.add(point3);
        toSet.add(point4);
        Rectangle toCheck = new Rectangle(toSet);
        double[] sideLengths = toCheck.getSideLengths(); 
        if (sideLengths[0] == 0 || sideLengths[1] == 0 || sideLengths[2] == 0 || sideLengths[3] == 0) {
            return false;
        }*/
        
        double oneDiag = Math.sqrt(Math.pow((point1.coordinates()[0] - point3.coordinates()[0]), 2) +
                         Math.pow((point1.coordinates()[1] - point3.coordinates()[1]), 2));
        double twoDiag = Math.sqrt(Math.pow(point2.coordinates()[0] - point4.coordinates()[0], 2) +
                         Math.pow((point2.coordinates()[1] - point4.coordinates()[1]), 2));
        return (oneDiag == twoDiag);
    }

    private boolean isTheSamePoint(TwoDPoint arg1, TwoDPoint arg2) {
        if (arg1.getXcor() == arg2.getXcor() && arg1.getYcor() == arg2.getYcor()) {
            return true;
        }
        else {
            return false;
        }
    }

    @Override
    public double area() {
        double toReturn;
        double side1 = Math.sqrt(Math.pow((getVertices()[0].coordinates()[0] - getVertices()[1].coordinates()[0]), 2) +
                                  Math.pow((getVertices()[0].coordinates()[1] - getVertices()[1].coordinates()[1]), 2));
        double side2 = Math.sqrt(Math.pow((getVertices()[1].coordinates()[0] - getVertices()[2].coordinates()[0]), 2) +
                                   Math.pow((getVertices()[1].coordinates()[1] - getVertices()[2].coordinates()[1]), 2));
        toReturn = side1 * side2;
        return toReturn;
    }
}
