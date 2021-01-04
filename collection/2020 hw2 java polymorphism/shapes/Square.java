import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.DoubleStream;

public class Square extends Rectangle implements Snappable {

    //private TwoDPoint[] vertices = new TwoDPoint[4];

    public Square(List<TwoDPoint> vertices) {
        super(vertices);
    }

    public TwoDPoint[] getVertices() {
        return super.getVertices();
    }

    /**
     * Given a list of vertices assumed to be provided in a counterclockwise order in a two-dimensional plane, checks
     * whether or not they constitute a valid square.
     *
     * @param vertices the specified list of vertices in a counterclockwise order
     * @return <code>true</code> if the four vertices can form a square, <code>false</code> otherwise.
     */
    @Override
    public boolean isMember(List<? extends Point> vertices) {
        return vertices.size() == 4 &&
                DoubleStream.of(getSideLengths()).boxed().collect(Collectors.toSet()).size() == 1;
    }

    /**
     * Snaps the sides of the square such that each corner (x,y) is modified to be a corner (x',y') where x' is the
     * the integer value closest to x and y' is the integer value closest to y. This, of course, may change the shape
     * to a general quadrilateral, hence the return type. The only exception is when the square is positioned in a way
     * where this approximation will lead it to vanish into a single point. In that case, a call to {@link #snap()}
     * will not modify this square in any way.
     */
    @Override
    public Quadrilateral snap() {
        Quadrilateral save = new Square(this.getPosition());
        double roundXfirst = Math.rint(getVertices()[0].coordinates()[0]);
        double roundXsecond = Math.rint(getVertices()[1].coordinates()[0]);
        double roundXthird = Math.rint(getVertices()[2].coordinates()[0]);
        double roundXfourth = Math.rint(getVertices()[3].coordinates()[0]);
        double roundYfirst = Math.rint(getVertices()[0].coordinates()[1]);
        double roundYsecond = Math.rint(getVertices()[1].coordinates()[1]);
        double roundYthird = Math.rint(getVertices()[2].coordinates()[1]);
        double roundYfourth = Math.rint(getVertices()[3].coordinates()[1]);
        TwoDPoint firstCor = new TwoDPoint(roundXfirst, roundYfirst);
        TwoDPoint secondCor = new TwoDPoint(roundXsecond, roundYsecond);
        TwoDPoint thirdCor = new TwoDPoint(roundXthird, roundYthird);
        TwoDPoint fourthCor = new TwoDPoint(roundXfourth, roundYfourth);
        List<TwoDPoint> newVertices = new ArrayList<TwoDPoint>();
        newVertices.add(firstCor);
        newVertices.add(secondCor);
        newVertices.add(thirdCor);
        newVertices.add(fourthCor);
        Quadrilateral toReturn = new Quadrilateral(newVertices);
        double[] sideLengths = toReturn.getSideLengths();
        if (sideLengths[0] == 0 || sideLengths[1] == 0 || sideLengths[2] == 0 || sideLengths[3] == 0) {
            return save;
        }
        return toReturn;
    }
}
