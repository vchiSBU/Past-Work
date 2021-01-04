import java.util.ArrayList;
import java.util.List;

public class Cuboid implements ThreeDShape {

    private final ThreeDPoint[] vertices = new ThreeDPoint[8];

    public static Cuboid random() {
        double oneXcor = Math.random()*10;
        double oneYcor = Math.random()*10;
        double oneZcor = Math.random()*10;
        double theOtherXcor = Math.random()*10;
        double theOtherYcor = Math.random()*10;
        double theOtherZcor = Math.random()*10;
        double leftXcor = 0.0;
        double rightXcor = 0.0;
        double aboveYcor = 0.0;
        double belowYcor = 0.0;
        double frontZcor = 0.0;
        double backZcor = 0.0;
        if (oneXcor < theOtherXcor) {
            leftXcor = oneXcor;
            rightXcor = theOtherXcor;
        }
        else {
            leftXcor = theOtherXcor;
            rightXcor = oneXcor;
        }
        if (oneYcor < theOtherYcor) {
            aboveYcor = theOtherYcor;
            belowYcor = oneYcor;
        }
        else {
            aboveYcor = oneYcor;
            belowYcor = theOtherYcor;
        }
        if (oneZcor < theOtherZcor) {
            frontZcor = oneZcor;
            backZcor = theOtherZcor;
        }
        else {
            frontZcor = theOtherZcor;
            backZcor = oneZcor;
        }
        ThreeDPoint v0 = new ThreeDPoint(rightXcor, aboveYcor, frontZcor);
        ThreeDPoint v1 = new ThreeDPoint(leftXcor, aboveYcor, frontZcor);
        ThreeDPoint v2 = new ThreeDPoint(leftXcor, belowYcor, frontZcor);
        ThreeDPoint v3 = new ThreeDPoint(rightXcor, belowYcor, frontZcor);
        ThreeDPoint v4 = new ThreeDPoint(rightXcor, belowYcor, backZcor);
        ThreeDPoint v5 = new ThreeDPoint(rightXcor, aboveYcor, backZcor);
        ThreeDPoint v6 = new ThreeDPoint(leftXcor, aboveYcor, backZcor);
        ThreeDPoint v7 = new ThreeDPoint(leftXcor, belowYcor, backZcor);
        List<ThreeDPoint> newVertices = new ArrayList<ThreeDPoint>();
        newVertices.add(v0);
        newVertices.add(v1);
        newVertices.add(v2);
        newVertices.add(v3);
        newVertices.add(v4);
        newVertices.add(v5);
        newVertices.add(v6);
        newVertices.add(v7);
        Cuboid newCuboid = new Cuboid(newVertices);
        return newCuboid;
    }

    /**
     * Creates a cuboid out of the list of vertices. It is expected that the vertices are provided in
     * the order as shown in the figure given in the homework document (from v0 to v7).
     *
     * @param vertices the specified list of vertices in three-dimensional space.
     */
    public Cuboid(List<ThreeDPoint> vertices) {
        if (vertices.size() != 8)
            throw new IllegalArgumentException(String.format("Invalid set of vertices specified for %s",
                                                             this.getClass().getName()));
        int n = 0;
        for (ThreeDPoint p : vertices) this.vertices[n++] = p;
    }

    public ThreeDPoint[] getVertices() {
        return this.vertices;
    }

    @Override
    public double volume() {
        ThreeDPoint point0 = vertices[0];
        ThreeDPoint point1 = vertices[1];
        ThreeDPoint point3 = vertices[3];
        ThreeDPoint point5 = vertices[5];
        double sideOne = Math.sqrt(Math.pow(point0.coordinates()[0] - point1.coordinates()[0], 2) +
                                   Math.pow(point0.coordinates()[1] - point1.coordinates()[1], 2) +
                                   Math.pow(point0.coordinates()[2] - point1.coordinates()[2], 2));
        double sideTwo = Math.sqrt(Math.pow(point0.coordinates()[0] - point3.coordinates()[0], 2) +
                                   Math.pow(point0.coordinates()[1] - point3.coordinates()[1], 2) +
                                   Math.pow(point0.coordinates()[2] - point3.coordinates()[2], 2));
        double sideThree = Math.sqrt(Math.pow(point0.coordinates()[0] - point5.coordinates()[0], 2) +
                                   Math.pow(point0.coordinates()[1] - point5.coordinates()[1], 2) +
                                   Math.pow(point0.coordinates()[2] - point5.coordinates()[2], 2));
        double volume = sideOne * sideTwo * sideThree;
        return volume;
    }

    @Override
    public ThreeDPoint center() {
        ThreeDPoint pointToCompare = vertices[0];
        ThreeDPoint secondPointToCompare = vertices[7];
        ThreeDPoint centerPoint = new ThreeDPoint(
                                            (pointToCompare.coordinates()[0] + secondPointToCompare.coordinates()[0] / 2),
                                            (pointToCompare.coordinates()[1] + secondPointToCompare.coordinates()[1] / 2),
                                            (pointToCompare.coordinates()[2] + secondPointToCompare.coordinates()[2] / 2));
        return centerPoint;
    }

    @Override
    public int compareTo(ThreeDShape o) {
        if (this.volume() > o.volume()) {return 1;}
        else if (this.volume() < o.volume()) {return -1;}
        else {return 0;}
    }
}
