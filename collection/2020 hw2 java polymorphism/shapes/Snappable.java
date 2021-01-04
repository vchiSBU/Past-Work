public interface Snappable {

    /**
     * An object implementing this interface is snapped to integer coordinates. The implementation is expected to ensure
     * that the rounding of the original coordinates is accurately done to the nearest integer coordinate values. For
     * example, if a vertex is at <code>(0.8,1.44)</code>, after <code>snap()</code> this corner is expected to be at
     * <code>(1,1)</code>.
     *
     * This is the expectation set by this interface, but the actual implementation is, of course, specific to the
     * context of the class. For example, a future implementation may use this interface to denote objects that must be
     * snappable in the photographic sense of the word.
     *
     * @return the snapped object.
     */
    TwoDShape snap();
}
