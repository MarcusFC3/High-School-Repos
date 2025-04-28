package j1.ch8.lab2;

/**
 *
 * @author
 */
public class J1Ch8Lab2 {

    public static void main(String[] args) {
        int[][] data = {{2, 1, 0}, {8, 4, 3}, {6, 7, 4}};
        int[] largestItemIndexes;

        printMatrix(data);
        largestItemIndexes = findLargestIndexes(data);//FIX#1 Fixed syntax error by removing index values infront of data array
        System.out.printf("\nThe largest value in the two dimensional array is %d and it is located at row index %d and column index %d.", 
                //FIX#2 changed first format code to %d
                data[largestItemIndexes[0]][largestItemIndexes[1]],
                largestItemIndexes[0],
                largestItemIndexes[1]);
    }

    /**
     * This method takes as a parameter a two dimensional array of any number of
     * ints. It determines what the largest value is in the array then returns a
     * two element single dimensional array that represents the row and column
     * index of the largest value's position in the array.
     *
     * @param array The two dimensional array or any number of ints.
     * @return The two element single single dimensional array providing the row
     * and column index of the largest value in the array. largest value's
     * position in the array.
     */
    public static int[] findLargestIndexes(int[][] array) {
        int[] largestIndex = new int[2];
        int largestValue;

        // Initialize the first value in the array as the starting largest value
        largestValue = array[0][0];

        // Loop through the rows
        for (int row = 0; row < array.length; ++row) {
            // Loop through the columns
            for (int column = 0; column < array[row].length; ++column) {
                // Determine if the current cell is larger than largestValue
                if (array[row][column] > largestValue) {      
                    // If the current cell is largest set largestValue to the value found at the current row and column 
                    largestValue = array[row][column]; //FIX #3 fixed placement of row and column variables when setting largest values using array.
                    largestIndex[0] = row;
                    largestIndex[1] = column;
                }
            }
        }

        return largestIndex;
    }

    public static void printMatrix(int[][] matrixToPrint) {
        // Loop through the rows
        for (int row = 0; row < matrixToPrint.length; ++row) {
            // Loop through the columns
            for (int column = 0; column < matrixToPrint[row].length; ++column) {
                // Print each cell
                System.out.print(matrixToPrint[row][column] + " ");
            }
            // Start the next row on a new line
            System.out.println();
        }
    }

}
