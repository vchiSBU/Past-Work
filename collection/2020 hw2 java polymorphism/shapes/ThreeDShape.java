/**
 * An interface to represent a closed form in three-dimensional space. Every class implementing this interface must be
 * to able to specify the center of such a form and implement a method to calculate its volume. The volume is also used
 * to compare different instances of <code>ThreeDShape</code> in providing a natural order to this type. The natural
 * order of a type is used by the <code>Comparable</code> interface to sort objects of that type.
 */
public interface ThreeDShape extends Comparable<ThreeDShape> {

    /**
     * @return the <code>Point</code> instance that is the geometric center of this three-dimensional shape.
     */
    Point center();

    /**
     * @return the volume of this three-dimensional shape.
     */
    double volume();
}
