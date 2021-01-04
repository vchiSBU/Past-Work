/**
 * A symmetric two-dimensional shape is an interface that provides the behavioral skeleton of shapes that have a
 * well-defined center and area.
 */
public interface SymmetricTwoDShape extends Positionable, TwoDShape {

    /**
     * @return the <code>Point</code> instance that is the geometric center of this symmetric two-dimensional shape.
     */
    Point center();

    /**
     * @return the area of this symmetric two-dimensional shape.
     */
    double area();
}
