T = gets.chomp.to_i
for x in 1..T do
    N, K = gets.chomp.split.map(&:to_i)
    A = gets.chomp.split.map(&:to_i)

    if K <= 1
        result = A.join(" ")
        print "#{result}\n"
        next
    end

    K.times do |z|
        I = A[0]
        L = A[N-1]

        A[0] = L

        for y in 1..N-1 do
            aux = A[y]
            A[y] = I
            I = aux
        end
    end

    result = A.join(" ")
    print "#{result}\n"
end

