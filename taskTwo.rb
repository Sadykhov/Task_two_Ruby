def InputMatrix()
    matrix = Array.new
    puts "Введите колчиство строк в матрице"
    n = gets.to_i
    puts "Введите колчиство строк в матрице"
    k = gets.to_i
    i = 0
    while i < n
        puts "Введите #{i+1} строку"
        stroka = readline().split
        if stroka.length() != k
            puts "Ввел неправильное количесвто элементов строки, попробуй еще раз"
            next
        end
        matrix << stroka
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
        puts "Эти матрицы нельзя перемножать"
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
                    resultMatrix[i][j] += element1.to_i * element2.to_i
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


puts "Введите 1 матрицу"
aMat = InputMatrix()
puts "Введите 2 матрицу"
bMat = InputMatrix()
puts "Матрица 1:"
Output(aMat)
puts "Матрица 2:"
Output(bMat)
cMat = dotMatrix(aMat, bMat)
puts "Произведение матриц:"
Output(cMat)





