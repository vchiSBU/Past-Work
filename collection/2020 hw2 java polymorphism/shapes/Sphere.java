public class Sphere implements ThreeDShape {

    private final double radius;
    private final ThreeDPoint center;

    public static Sphere random() {
        double oneXcor = Math.random()*10;
        double oneYcor = Math.random()*10;
        double oneZcor = Math.random()*10;
        ThreeDPoint newCenter = new ThreeDPoint(oneXcor, oneYcor, oneZcor);
        double randomRadius = Math.random()*10;
        Sphere toReturn = new Sphere(newCenter, randomRadius);
        return toReturn;
    }

    /**
     * Creates a sphere from a radius.
     *
     * @param centerCoordinates coordinates of the sphere
     * @param toSet the radius of desired sphere
     */
    public Sphere(ThreeDPoint cor, double toSet) {
        center = cor;
        radius = toSet;
    }

    public double getRadius() {
        return radius;
    }

    @Override
    public double volume() {
        double result = (double)4/3 * Math.PI * Math.pow(radius, 3);
        return result;
    }

    @Override
    public ThreeDPoint center() {
        return center;
    }

    @Override
    public int compareTo(ThreeDShape o) {
        if (this.volume() > o.volume()) {return 1;}
        else if (this.volume() < o.volume()) {return -1;}
        else {return 0;}
    }

}
