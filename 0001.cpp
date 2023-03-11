/*
https://www.hackerearth.com/practice/basic-programming/input-output/basics-of-input-output/practice-problems/algorithm/maximum-border-9767e14c/

Problem:

You are given a table with N rows and M columns. Each cell is colored with
white or black. Considering the shapes created by black cells, what is the
maximum border of these shapes? Border of a shape means the maximum number of
consecutive black cells in any row or column without any white cell in between.

A shape is a set of connected cells. Two cells are connected if they share an
edge. Note that no shape has a hole in it.


Input format:

- The first line contains T denoting the number of test cases.
- The first line of each test case contains integers N, M denoting the number
of rows and columns of the matrix. Here, '#' represents a black cell and '.'
represents a white cell.
- Each of the next N lines contains M integers.


Output format

Print the maximum border of the shapes.

_____________________________________________
| Sample Input       |  Sample Output       |
---------------------------------------------
| 2                  | 4                    |
| 2 15               | 5                    |
| .....####......    |                      |
| .....#.........    |                      |
| 7 9                |                      |
| ...###...          |                      |
| ...###...          |                      |
| ..#......          |                      |
| .####....          |                      |
| ..#......          |                      |
| ...#####.          |                      |
| .........          |                      |
---------------------------------------------
*/


#include <iostream>
using namespace std;

int main() {
    int number_of_test_cases;
    cin >> number_of_test_cases;

    for (int i = 0; i < number_of_test_cases; i++) {
        int number_of_rows, number_of_columns;

        cin >> number_of_rows >> number_of_columns;

        int count = 0, ans = 0;
        char arr[number_of_rows][number_of_columns];

        for (int i = 0; i < number_of_rows; i++) {
            for (int j = 0; j < number_of_columns; j++) {
                cin >> arr[i][j];

                if (arr[i][j] == '#') { count++; }
            }

            if (count > ans) { ans = count; }

            count = 0;
        }

        for (int i = 0; i < number_of_columns; i++) {
            for (int j = 0; j < number_of_rows; j++) {
                if (j > 0) {
                    if (arr[j][i] == '#') {
                        if (arr[j - 1][i] == '#') {
                            count++;
                        }
                    } else {
                        break;
                    }
                } else {
                    if (arr[j][i] == '#') { count++; }
                }
            }

            if (count > ans) { ans = count; }

            count = 0;
        }

        cout << ans << endl;
    }
}
