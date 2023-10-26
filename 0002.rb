=begin
Monk and Rotation

Monk loves to preform different operations on arrays, and so being the
principal of Hackerearth School, he assigned a task to his new student Mishki.
Mishki will be provided with an integer array A of size N and an integer K,
where she needs to rotate the array in the right direction by K steps and then
print the resultant array. As she is new to the school, please help her to
complete the task.

Input:
The first line will consists of one integer T denoting the number of test cases.
For each test case:
1) The first line consists of two integers N and K, N being the number of
elements in the array and K denotes the number of steps of rotation.
2) The next line consists of N space separated integers , denoting the elements
of the array A.

Output:
Print the required array.

Constraints:
1 <= T <= 20
1 <= N <= 10ˆ5
0 <= K <= 10ˆ6
0 <= A[i] <= 10ˆ6

_____________________________________________
| Sample Input       |  Sample Output       |
---------------------------------------------
| 1                  | 4 5 1 2 3            |
| 5 2                |                      |
| 1 2 3 4 5          |                      |
---------------------------------------------

Explanation
Here T is 1, which means one test case.

N = 5 denoting the number of elements in the array and k = 2, denoting the
number of steps of rotations.

The initial array is: 1, 2 ,3 , 4, 5

In first rotation, 5 will come in the first position and all other elements
will move to one position ahead from their current position. Now, the resultant
array will be 5, 1, 2, 3, 4

In second rotation, 4 will come in the first position and all other elements
will move to one position ahead from their current position. Now, the resultant
array will be 4, 5, 1, 2, 3
=end

t = gets.chomp.to_i
for _ in 1..t do
    n, k = gets.chomp.split.map(&:to_i)
    a = gets.chomp

    while k > n
        k -= n
    end

    if k == 0 || n == 1 || n == k
        print "#{a}\n"
        next
    end

    a = a.split
    b = Array.new

    for __ in 1..K do
        b.insert(0, a.pop())
    end

    a = b + a

    print "#{a.join(' ')}\n"
end
