import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static java.util.Arrays.asList;

public class Anagram {

    private static Set<String> dictionary = new HashSet<String>();

    public Anagram() {
        dictionary.add("dogs");
        dictionary.add("gods");
    }

    public static List<String> permutation(String str) {
        return permutation("", str);
    }

    private static List<String> permutation(String prefix, String str) {
        int n = str.length();
        if (n == 0) {
            return dictionary.contains(prefix) ? asList(prefix) : new ArrayList<String>();
        }

        List<String> strings = new ArrayList<String>();
        for (int i = 0; i < n; i++) {
            strings.addAll(permutation(prefix + str.charAt(i), str.substring(0, i) + str.substring(i + 1, n)));
        }
        return strings;
    }

    public static void main(String[] args) {
        new Anagram().permutation("dogs");
    }
}
