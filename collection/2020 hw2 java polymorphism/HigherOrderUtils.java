import java.util.List;
import java.util.function.BiFunction;
import java.util.function.Function;

public class HigherOrderUtils {

    interface NamedBiFunction<T, U, V> extends BiFunction<T, U, V> {
        String name();
    }

    public static NamedBiFunction<Double, Double, Double> add = new NamedBiFunction<Double, Double, Double>() {
        public String name() { return "add\n";}
        public Double apply(Double a, Double b) { return a + b;}
    };

    public static NamedBiFunction<Double, Double, Double> subtract = new NamedBiFunction<Double, Double, Double>() {
        public String name() { return "diff\n";}
        public Double apply(Double a, Double b) { return a - b;}
    };

    public static NamedBiFunction<Double, Double, Double> multiply = new NamedBiFunction<Double, Double, Double>() {
        public String name() { return "mult\n";}
        public Double apply(Double a, Double b) { return a * b;}
    };

    public static NamedBiFunction<Double, Double, Double> divide = new NamedBiFunction<Double, Double, Double>() {
        public String name() { return "div\n";}
        public Double apply(Double a, Double b) {
            if (b == 0) {
                throw new java.lang.ArithmeticException();
            }
            return a / b;
        }
    };

    /**
    * Applies a given list of bifunctions -- functions that take two arguments of a certain type and produce
    * a single instance of that type -- to a list of arguments of that type. The functions are applied
    * iteratively, and the result of each function is stored in the list iteratively as well, to be
    * used by the next bifunction in the next iteration. E.g.,
    * List<Double> args = Arrays.asList(1d, 1d, 3d, 0d, 4d), and
    * List<NamedBiFunction<Double, Double, Double>> bfs = [add, multiply, add, divide],
    * <code>zip(args, bfs)</code> will proceed iteratively as follows:
    * - index 0: the result of add(1,1) is stored in args[1] to yield args = [1,2,3,0,4]
    * - index 1: the result of multiply(2,3) is stored in args[2] to yield args = [1,2,6,0,4]
    * - index 2: the result of add(6,0) is stored in args[3] to yield args = [1,2,6,6,4]
    * - index 3: the result of divide(6,4) is stored in args[4] to yield args = [1,2,6,6,1]
    *
    * @param args: the arguments over which <code>bifunctions</code> will be applied.
    * @param bifunctions: the list of bifunctions that will be applied on <code>args</code>.
    * @param <T>: the type parameter of the arguments (e.g., Integer, Double)
    * @return the item in the last index of <code>args</code>, which has the final
    * result of all the bifunctions being applied in sequence.
    */
    public static <T> T zip(List<T> args, List<NamedBiFunction<T, T, T>> bifunctions) {
        if (bifunctions.size() != args.size() - 1) {
            throw new IllegalArgumentException();
        }
        if (args.get(0) instanceof Double) {
            for (int i = 0; i < bifunctions.size(); i++) {
                T toApply = bifunctions.get(i).apply(args.get(i), args.get(i+1));
                args.set(i+1, toApply);
            }
        }
        return args.get(args.size() - 1);
    }

    static class FunctionComposition<T, U, V>{
        public BiFunction<Function<T, U>, Function<U, V>, Function<T, V>> composition = 
            new BiFunction<Function<T, U>, Function<U, V>, Function<T, V>>(){
            @Override
            public Function<T, V> apply(Function<T, U> toApply1, Function<U,V> toApply2) {
                return (Function<T, V>) toApply2.compose(toApply1);
            }
        };
    }
}
