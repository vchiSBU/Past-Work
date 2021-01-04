/**
 * An unmodifiable point in the three-dimensional space. The coordinates are specified by exactly three doubles (its
 * <code>x</code>, <code>y</code>, and <code>z</code> values).
 */
public class ThreeDPoint implements Point {
    private double xcor;
    private double ycor;
    private double zcor;

    public ThreeDPoint(double x, double y, double z) {
        this.xcor = x;
        this.ycor = y;
        this.zcor = z;
    }

    public double getXcor() {
        return xcor;
    }
    public double getYcor() {
        return ycor;
    }
    public double getZcor() {
        return zcor;
    }

    /**
     * @return the (x,y,z) coordinates of this point as a <code>double[]</code>.
     */
    @Override
    public double[] coordinates() {
        double[] toReturn = new double[3];
        toReturn[0] = this.xcor;
        toReturn[1] = this.ycor;
        toReturn[2] = this.zcor;
        return toReturn;
    }
}
