import java.io.File;  // Import the File class
import java.io.FileNotFoundException;  // Import this class to handle errors
import java.nio.file.Files;
import java.util.concurrent.*;
import java.util.Set;
import java.util.TreeSet;
import java.util.Map;
import java.util.TreeMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.function.*;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.stream.Collectors;
import java.util.Collections;
import java.util.List;
import java.io.IOException;
import java.lang.InterruptedException;

public class WordCounter extends Thread {
    private static TreeMap<String, Map<String, Long>> wordbank = new TreeMap<String, Map<String, Long>>();

    private List<Path> helpMeGod;

    public WordCounter(List<Path> toSet) {
        helpMeGod = toSet;
    }

    // The following are the ONLY variables we will modify for grading.
    // The rest of your code must run with no changes.

    public static final Path FOLDER_OF_TEXT_FILES  = Paths.get("input_1607483769"); // path to the folder where input text files are located
    public static final Path WORD_COUNT_TABLE_FILE = Paths.get("fileToWrite.txt"); // path to the output plain-text (.txt) file
    public static final int  NUMBER_OF_THREADS     = 5;                // max. number of threads to spawn 
        
    public static void main(String... args) {
        long start = System.currentTimeMillis();

        try { List<Path> textFiles = Files.list(FOLDER_OF_TEXT_FILES).filter(aFile -> aFile.toString().endsWith(".txt"))
                                    .collect(Collectors.toList());
                                    if (NUMBER_OF_THREADS <= 1) {
                                        readFiles(textFiles);
                                    }
                                    else {
                                        WordCounter[] listOfThreads = new WordCounter[NUMBER_OF_THREADS];
                                        int filesPerThread = textFiles.size() / NUMBER_OF_THREADS;
                                        for (int i = 0; i < NUMBER_OF_THREADS; i++) {
                                            if (i == NUMBER_OF_THREADS - 1) {
                                                listOfThreads[i] = new WordCounter(textFiles.subList(i * filesPerThread, textFiles.size() ));
                                            }
                                            else {
                                                listOfThreads[i] = new WordCounter(textFiles.subList(i * filesPerThread, (i + 1) * filesPerThread));
                                            }
                                            listOfThreads[i].start();
                                        }
                                        for (WordCounter toJoin : listOfThreads) {
                                            try {toJoin.join();}
                                            catch(InterruptedException e) {}
                                        }
                                    }
                                    
                                }
                                    catch(IOException e) {}

        long read = System.currentTimeMillis();

        write();

        long end = System.currentTimeMillis();
        System.out.printf("Speed to read for %d threads:  %6d ms%n", NUMBER_OF_THREADS, read-start);
        System.out.printf("Speed to write for %d threads: %6d ms%n", NUMBER_OF_THREADS, end-read);
        System.out.printf("Speed total for %d threads:    %6d ms%n", NUMBER_OF_THREADS, end-start);

        
    }

    public void run() {
        readFiles(helpMeGod);
    }

    public static void write() {
        Set<String> setOfKeys = wordbank.keySet();
        Set<String> setOfWords = new TreeSet<String>();
        int longestLength = 0;
        int longestWord = 0;
        for (String toCheck: setOfKeys) {
            if (toCheck.length() > longestLength) {
                longestLength = toCheck.length();
            }
            setOfWords.addAll(wordbank.get(toCheck).keySet());
        }
        for (String toCheck: setOfWords) {
            if (toCheck.length() > longestWord) {
                longestWord = toCheck.length();
            }
        }
        longestWord++;
        longestLength++;
        ArrayList<String> abigL = new ArrayList<String>(setOfWords);
        Collections.sort(abigL);
        ArrayList<String> lineToRight = new ArrayList<String>();
        String line = "";
        line += String.format("%-" + longestWord + "s", "");

        for (String toCheck: setOfKeys) {
            line += String.format("%-" + longestLength + "s", toCheck);
        }
        
        line += String.format("%-" + longestLength + "s", "total");
        lineToRight.add(line);

        for (String toCheck: abigL) {
            line = "";
            line += String.format("%-" + longestWord + "s", toCheck);
            long total = 0;
            for (String toCheck2 : setOfKeys) {
                long count = 0;
                if (wordbank.get(toCheck2).get(toCheck) != null) {count = wordbank.get(toCheck2).get(toCheck);}
                line += String.format("%-" + longestLength + "d", count);
                total += count;
            }

            line += String.format("%-" + longestLength + "d", total);
            lineToRight.add(line);
        }

        try {Files.write(WORD_COUNT_TABLE_FILE, lineToRight);}
        catch (IOException e) {}
    }

    public static void readFiles(List<Path> pathsToRead) {
        for (Path path : pathsToRead) {
            try{ Map<String, Long> wordMap = Files.lines(path).flatMap(line -> Arrays.stream(line.split(" ")))
            .filter(word -> !word.isEmpty()).map(word -> word.toLowerCase().replaceAll("[.,:;!?]", ""))
            .collect(Collectors.groupingBy(Function.identity(),Collectors.counting()));
            String name = path.getFileName().toString().substring(0, path.getFileName().toString().length() - 4);
            putInBank(name, wordMap);}
            catch(IOException e) {}
        }
    }

    public static synchronized void putInBank(String arg1, Map<String, Long> arg2) {
        wordbank.put(arg1, arg2);
    }
}