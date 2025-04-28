package randomdatafilesort;

import java.io.FileNotFoundException;
import java.util.Arrays;
import java.util.Random;
import java.util.Scanner;

/**
 * Author: Marcus Jones Jr. Chapter: 12 Lab: 2
 */
public class RandomDataFileSort {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        final int TOTAL_NUMS = 100;
        Random rand = new Random();
        java.io.File File = new java.io.File("randomdata.dat");
        int[] numsInFile = new int[TOTAL_NUMS];

        if (File.exists()) {
            System.out.println("File " + File.getName() + " Already exists in " + File.getAbsolutePath());
            System.exit(1);
        } else {
            try (java.io.PrintWriter FileWriter = new java.io.PrintWriter(File)) {
                for (int num = 0; num < TOTAL_NUMS; num++) {
                    FileWriter.append(rand.nextInt(50) + 1 + "\n");
                }
                FileWriter.close();
            } catch (FileNotFoundException ex) {
                System.out.println("File " + File.getName() + " was not found");
            }

            try (Scanner sc = new Scanner(File)) {
                int index = 0;
                while (sc.hasNext()) {
                    numsInFile[index] = sc.nextInt();
                    index++;
                }
                sc.close();
                Arrays.sort(numsInFile);

                for (int num : numsInFile) {
                    System.out.print(num + " ");
                }

            } catch (FileNotFoundException ex) {
                System.out.println("File " + File.getName() + " was not found");
            }

        }
    }

}
