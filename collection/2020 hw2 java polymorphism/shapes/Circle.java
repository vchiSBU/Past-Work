import java.util.Collections;
import java.util.List;

public class Circle implements Positionable, SymmetricTwoDShape {

    private TwoDPoint center;
    private double    radius;

    public Circle(double centerx, double centery, double radius) {
        this.center = new TwoDPoint(centerx, centery);
        this.radius = radius;
    }

    @Override
    public Point center() {
        return center;
    }

    /**
     * Sets the position of the circle to be centered at the first element in the specified list of points.
     *
     * @param points the specified list of points.
     * @throws IllegalArgumentException if the input does not consist of {@link TwoDPoint} instances.
     */
    @Override
    public void setPosition(List<? extends Point> points) {
        if (!(points.get(0) instanceof TwoDPoint)) {
            throw new IllegalArgumentException();
        }
        Point toSet = points.get(0);
        this.center = (TwoDPoint)toSet;
    }

    @Override
    public List<? extends Point> getPosition() {
        return Collections.singletonList(center);
    }

    public void setRadius(double r) { this.radius = r; }

    public double getRadius()       { return radius; }

    @Override
    public int numSides() {
        return 0; // even though it really should be positive infinity
    }

    @Override
    public boolean isMember(List<? extends Point> centers) {
        return centers.size() == 1 && radius > 0;
    }

    @Override
    public double area() {
        return Math.PI * Math.pow(radius, 2);
    }
}
