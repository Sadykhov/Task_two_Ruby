def InputMatrix()
    matrix = Array.new
    puts "Inpuy number of row in matrix"
    n = gets.to_i
    puts "Input number of columne in matrix"
    k = gets.to_i
    i = 0
    while i < n
        puts "Input #{i+1} row"
        row = readline().split
        if row.length() != k
            puts "Wrong input row, try again"
            next
        end
        matrix << row
        i +=1
    end
    puts "\n"
    return matrix
end

def dotMatrix(matrixA, matrixB)
    row1 = matrixA.length()
    col1 = matrixA[0].length()
    row2 = matrixB.length()
    col2 = matrixB[0].length()
    if matrixA[0].length() != matrixB.length()
        puts "columnes first matrix != rows second matrix, try again"
        return 0
    else
        resultMatrix = Array.new()
        (0..row1-1).each do |i|
            resultMatrix[i] = Array.new(matrixB.length())
            (0..col2-1).each do |j|
                resultMatrix[i][j] = 0
                (0..row2-1).each do |k|
                    element1 = matrixA[i][k]
                    element2 = matrixB[k][j]
                    resultMatrix[i][j] += element1.to_f * element2.to_f
                end
            end
        end
    end
    return resultMatrix
end

def Output(massiv)
    for i in massiv
        for j in i
            print(j, "\t")
        end
        puts "\n"
    end
    puts "\n"
end


puts "Input first matrix"
aMat = InputMatrix()
puts "Input second matrix"
bMat = InputMatrix()
puts "Matrix 1:"
Output(aMat)
puts "Matrix 2:"
Output(bMat)
cMat = dotMatrix(aMat, bMat)
puts "matrxi_1 * matrix_2:"
Output(cMat)





