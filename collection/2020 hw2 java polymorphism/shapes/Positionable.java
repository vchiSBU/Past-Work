import java.util.List;

public interface Positionable {

    /**
     * Set the position of an object according to the specified list of points. The details of how this is to be done,
     * and on what logical or geometric basis, is left to the corresponding class implementation of such an object.
     *
     * @param points the specified list of points.
     */
    void setPosition(List<? extends Point> points);

    /**
     * Retreive the position of an object as a list of points.
     *
     * @return the retrieved list of points.
     */
    List<? extends Point> getPosition();
}
