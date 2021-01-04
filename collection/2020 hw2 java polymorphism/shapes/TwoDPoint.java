import java.util.ArrayList;
import java.util.List;

/**
 * An unmodifiable point in the standard two-dimensional Euclidean space. The coordinates of such a point is given by
 * exactly two doubles specifying its <code>x</code> and <code>y</code> values.
 */
public class TwoDPoint implements Point {
    private double xcor;
    private double ycor;

    public TwoDPoint(double x, double y) {
        this.xcor = x;
        this.ycor = y;
    }

    public double getXcor() {
        return xcor;
    }
    public double getYcor() {
        return ycor;
    }

    /**
     * @return the coordinates of this point as a <code>double[]</code>.
     */
    @Override
    public double[] coordinates() {
        double[] toReturn = new double[2];
        toReturn[0] = this.xcor;
        toReturn[1] = this.ycor;
        return toReturn;
    }

    /**
     * Returns a list of <code>TwoDPoint</code>s based on the specified array of doubles. A valid argument must always
     * be an even number of doubles so that every pair can be used to form a single <code>TwoDPoint</code> to be added
     * to the returned list of points.
     *
     * @param coordinates the specified array of doubles.
     * @return a list of two-dimensional point objects.
     * @throws IllegalArgumentException if the input array has an odd number of doubles.
     */
    public static List<TwoDPoint> ofDoubles(double... coordinates) throws IllegalArgumentException {
        if (coordinates.length % 2 == 1) {
            throw new IllegalArgumentException();
        }
        List<TwoDPoint> toReturn = new ArrayList<TwoDPoint>();
        double xcorToAdd = 0.0;
        double ycorToAdd = 0.0;
        for (int x = 0; x < coordinates.length; x++) {
            if (x % 2 == 0) {
                xcorToAdd = coordinates[x];
            }
            else {
                ycorToAdd = coordinates[x];
                TwoDPoint toAdd = new TwoDPoint(xcorToAdd, ycorToAdd);
                toReturn.add(toAdd);
            }
        }
        return toReturn;
    }
}