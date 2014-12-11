import java.util.*;

import static java.util.Arrays.asList;

public class PhoneNumber {

    private static Map<Integer, List<String>> numbersToLetterMap = new HashMap<Integer, List<String>>();
    private static final Set<String> dictionary = new HashSet<String>();

    static {
        numbersToLetterMap.put(2, asList("a", "b", "c"));
        numbersToLetterMap.put(3, asList("d", "e", "f"));
        numbersToLetterMap.put(4, asList("g", "h", "i"));
        numbersToLetterMap.put(5, asList("j", "k", "l"));
        numbersToLetterMap.put(6, asList("m", "n", "o"));

        dictionary.add("dog");
    }

    public static List<String> words(List<Integer> numbers) {
        Integer number = numbers.get(0);
        List<String> letters = numbersToLetterMap.get(number);
        List<String> words = Collections.emptyList();
    }

    public static List<String> words(String seed, List<Integer> numbers) {
        String seed = "";
        if (numbers.isEmpty()) {
            if(dictionary.contains(seed)) {
                return asList(seed);
            } else {
                return Collections.emptyList();
            }
        }
        for (String letter : letters) {
            String newWord = seed + letter;
            if(dictionary.contains(newWord)) {
                words.add(newWord);
            }
        }
        return permutation("", str);
    }

    private static List<String> permutation(String prefix, String str) {
        int n = str.length();
        if (n == 0) {
            return numbersToLetterMap.contains(prefix) ? asList(prefix) : new ArrayList<String>();
        }

        List<String> strings = new ArrayList<String>();
        for (int i = 0; i < n; i++) {
            strings.addAll(permutation(prefix + str.charAt(i), str.substring(0, i) + str.substring(i + 1, n)));
        }
        return strings;
    }

    public static void main(String[] args) {
        new PhoneNumber().words(3, 6, 4);
    }
}
