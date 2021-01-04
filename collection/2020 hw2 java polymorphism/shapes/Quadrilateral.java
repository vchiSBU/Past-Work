import java.util.Arrays;
import java.util.List;

public class Quadrilateral implements Positionable, TwoDShape {

    private final TwoDPoint[] vertices = new TwoDPoint[4];

    public Quadrilateral(double... vertices) { 
        this(TwoDPoint.ofDoubles(vertices));
    }

    public Quadrilateral(List<TwoDPoint> vertices) {
        int n = 0;
        for (TwoDPoint p : vertices) this.vertices[n++] = p;
        if (!isMember(vertices))
            throw new IllegalArgumentException(String.format("Invalid set of vertices specified for %s",
                                                             this.getClass().getCanonicalName()));
    }

    public TwoDPoint[] getVertices() {
        return this.vertices;
    }

    /**
     * Given a list of four points, adds them as the four vertices of this quadrilateral in the order provided in the
     * list. This is expected to be a counterclockwise order of the four corners.
     *
     * @param points the specified list of points.
     * @throws IllegalStateException if the number of vertices provided as input is not equal to four.
     */
    @Override
    public void setPosition(List<? extends Point> points) {
        Point firstVertex = points.get(0);
        Point secondVertex = points.get(1);
        Point thirdVertex = points.get(2);
        Point fourthVertex = points.get(3);
        this.vertices[0] = (TwoDPoint)firstVertex;
        this.vertices[1] = (TwoDPoint)secondVertex;
        this.vertices[2] = (TwoDPoint)thirdVertex;
        this.vertices[3] = (TwoDPoint)fourthVertex;
    }

    @Override
    public List<TwoDPoint> getPosition() {
        return Arrays.asList(vertices);
    }

    /**
     * @return the lengths of the four sides of the quadrilateral. Since the setter {@link Quadrilateral#setPosition(List)}
     *         expected the corners to be provided in a counterclockwise order, the side lengths are expected to be in
     *         that same order.
     */
    protected double[] getSideLengths() {
        double[] toReturn = new double[4];
        toReturn[0] = Math.sqrt(Math.pow((vertices[0].coordinates()[0] - vertices[1].coordinates()[0]), 2) +
                                                  Math.pow((vertices[0].coordinates()[1] - vertices[1].coordinates()[1]), 2));
        toReturn[1] = Math.sqrt(Math.pow((vertices[1].coordinates()[0] - vertices[2].coordinates()[0]), 2) +
                                                 Math.pow((vertices[1].coordinates()[1] - vertices[2].coordinates()[1]), 2));
        toReturn[2] = Math.sqrt(Math.pow((vertices[2].coordinates()[0] - vertices[3].coordinates()[0]), 2) +
                                                  Math.pow((vertices[2].coordinates()[1] - vertices[3].coordinates()[1]), 2));
        toReturn[3] = Math.sqrt(Math.pow((vertices[3].coordinates()[0] - vertices[0].coordinates()[0]), 2) +
                                                  Math.pow((vertices[3].coordinates()[1] - vertices[0].coordinates()[1]), 2));
        return toReturn;
    }

    @Override
    public int numSides() { return 4; }

    @Override
    public boolean isMember(List<? extends Point> vertices) { return vertices.size() == 4; }
}
