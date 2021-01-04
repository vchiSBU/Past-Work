import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class StreamUtils {
    /**
    * @param strings: the input collection of <code>String</code>s.
    * @return a collection of those <code>String</code>s in the input collection
    that start with a capital letter.
    */
    public static Collection<String> capitalized(Collection<String> strings) {
        return strings.stream().filter(s -> Character.isUpperCase(s.charAt(0))).collect(Collectors.toList());
    }

    /**
    * Find and return the longest <code>String</code> in a given collection of <code>String</code>s.
    *
    * @param strings: the given collection of <code>String</code>s.
    * @param from_start: a <code>boolean</code> flag that decides how ties are broken.
    If <code>true</code>, then the element encountered earlier in
    * the iteration is returned, otherwise the later element is returned.
    * @return the longest <code>String</code> in the given collection,
    * where ties are broken based on <code>from_start</code>.
    */
    public static String longest(Collection<String> strings, boolean from_start) {
        return strings.stream().reduce((str1, str2) -> ((String)str1).length() > ((String)str2).length() ? str1 :
                            (((String)str1).length() == ((String)str2).length() ? ((from_start) ? str1 : str2) : str2)).toString().substring(9).replace("]", "");
    }

    /* The least element. In this function, the single method chain can return a java.util.Optional<T>. (5)
    So you must write additional code to convert it to an object of type T (handling any potential exceptions). */

    /**
    * Find and return the least element from a collection of given elements that are comparable.
    *
    * @param items: the given collection of elements
    * @param from_start: a <code>boolean</code> flag that decides how ties are broken.
    * If <code>true</code>, the element encountered earlier in the
    * iteration is returned, otherwise the later element is returned.
    * @param <T>: the type parameter of the collection (i.e., the items are all of type T).
    * @return the least element in <code>items</code>, where ties are
    * broken based on <code>from_start</code>.
    */
    public static <T extends Comparable<T>> T least(Collection<T> items, boolean from_start) {
        return items.stream().reduce((i1, i2) -> (i1.compareTo(i2) < 0) ? i1 : (i1.compareTo(i2) == 0) ? (from_start ? i1 : i2) : i2).get();
    }

    /**
    * Flattens a map to a stream of <code>String</code>s, where each element in the list
    * is formatted as "key -> value".
    *
    * @param aMap the specified input map.
    * @param <K> the type parameter of keys in <code>aMap</code>.
    * @param <V> the type parameter of values in <code>aMap</code>.
    * @return the flattened list representation of <code>aMap</code>.
    */
    public static <K, V> List<String> flatten(Map<K, V> aMap) {
        return aMap.entrySet().stream().flatMap(s -> Stream.of(s.getKey() + "->" + s.getValue())).collect(Collectors.toList());
    }
}