> #Инициализируйте два вектора двумя разными способами. Тип элементов первого вектора — строка, 
> #второго — целое число. Второй вектор должен состоять минимум из 5 элементов. Выведите результат на экран."
> 
> vector1 <- c("da", "net", "mb", "gl", "hf")
> vector2 <- 0:4
> print(vector1)
[1] "da"  "net" "mb"  "gl"  "hf" 
> print(vector2)
[1] 0 1 2 3 4
> 
> #Поработайте с выборкой данных из второго вектора: 
> #выведите на экран его длину, первый элемент и элементы со второго по четвёртый.
> cat("\nДлина:", length(vector2), "\n")

Длина: 5 
> cat("Первый элемент:", vector2[1], "\n")
Первый элемент: 0 
> cat("Со 2 по 4:", vector2[2:4], "\n")
Со 2 по 4: 1 2 3 
> 
> #Инициализируйте два вектора и выведите на экран результат их сложения.
> vector1 <- 0:4
> vector2 <- 5:9
> cat("\nСложение:", vector1 + vector2, "\n")

Сложение: 5 7 9 11 13 
> 
> #Выберите любой из уже сгенерированных векторов и посчитайте среднее значение элементов вектора.
> cat("\nСреднее значение элементов вектора 1:", mean(vector1), "\n")

Среднее значение элементов вектора 1: 2 
> 
> #Реализуйте любую функцию, которая принимает на вход параметр X и выполняет с ним какую-либо математическую операцию (например, делит на два).
> just_two <- function(x) {
+   return(x / 2)
+ }
> #Примените реализованную функцию к любому вектору и выведите результат на экран.
> cat("\nРезультат применения функции к вектору 2:", just_two(vector2), "\n")

Результат применения функции к вектору 2: 2.5 3 3.5 4 4.5 
> 
> 
> #-----------------------------------------
> #Инициализируйте двумя разными способами матрицу, состоящую из трёх векторов длиной в три элемента. Выведите результат на экран.
> matrix1 <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
> matrix2 <- matrix(c(10, 11, 12, 13, 14, 15, 16, 17, 18), nrow = 3)
> 
> # Вывод результата на экран
> cat("Матрица 1:\n")
Матрица 1:
> print(matrix1)
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
[3,]    7    8    9
> cat("\nМатрица 2:\n")

Матрица 2:
> print(matrix2)
     [,1] [,2] [,3]
[1,]   10   13   16
[2,]   11   14   17
[3,]   12   15   18
> 
> # Вывод 1-ого столбца матриц и 2-ой строки
> cat("\nПервый столбец матрицы 1:\n")

Первый столбец матрицы 1:
> print(matrix1[, 1])
[1] 1 4 7
> cat("\nВторая строка матрицы 1:\n")

Вторая строка матрицы 1:
> print( matrix1[2, ])
[1] 4 5 6
> cat("\nПервый столбец матрицы 2:\n")

Первый столбец матрицы 2:
> print(matrix2[, 1])
[1] 10 11 12
> cat("\nВторая строка матрицы 2:\n")

Вторая строка матрицы 2:
> print(matrix2[2, ])
[1] 11 14 17
> 
> #Выведите на экран элемент, стоящий на пересечении двух диагоналей матрицы.
> element <- matrix1[(ncol(matrix1) + 1) / 2, (nrow(matrix1) + 1) / 2]
> cat("Элемент на пересечении диагоналей матрицы 1:", element, "\n")
Элемент на пересечении диагоналей матрицы 1: 5 
> element2 <- matrix2[(ncol(matrix2) + 1) / 2, (nrow(matrix2) + 1) / 2]
> cat("Элемент на пересечении диагоналей матрицы 2:", element2, "\n")
Элемент на пересечении диагоналей матрицы 2: 14 
> 
> 
> #Загрузите выбранные данные в датафрейм, 
> #выведите на экран первые несколько строчек загруженных данных, 
> #а также общую статистику по датафрейму с помощью функций str и summary.
> setwd("/Users/isharu/Desktop/R")
> df <- read.csv("/Users/isharu/Desktop/2_vgsales.csv")
> cat("\nПервыЕ строки:")

ПервыЕ строки:
> head(df)
  Rank                     Name Platform Year        Genre Publisher NA_Sales
1    1               Wii Sports      Wii 2006       Sports  Nintendo    41.49
2    2        Super Mario Bros.      NES 1985     Platform  Nintendo    29.08
3    3           Mario Kart Wii      Wii 2008       Racing  Nintendo    15.85
4    4        Wii Sports Resort      Wii 2009       Sports  Nintendo    15.75
5    5 Pokemon Red/Pokemon Blue       GB 1996 Role-Playing  Nintendo    11.27
6    6                   Tetris       GB 1989       Puzzle  Nintendo    23.20
  EU_Sales JP_Sales Other_Sales Global_Sales
1    29.02     3.77        8.46        82.74
2     3.58     6.81        0.77        40.24
3    12.88     3.79        3.31        35.82
4    11.01     3.28        2.96        33.00
5     8.89    10.22        1.00        31.37
6     2.26     4.22        0.58        30.26
> cat("\nОбщая стата:", "\n")

Общая стата: 
> str(df)
'data.frame':	16598 obs. of  11 variables:
 $ Rank        : int  1 2 3 4 5 6 7 8 9 10 ...
 $ Name        : chr  "Wii Sports" "Super Mario Bros." "Mario Kart Wii" "Wii Sports Resort" ...
 $ Platform    : chr  "Wii" "NES" "Wii" "Wii" ...
 $ Year        : chr  "2006" "1985" "2008" "2009" ...
 $ Genre       : chr  "Sports" "Platform" "Racing" "Sports" ...
 $ Publisher   : chr  "Nintendo" "Nintendo" "Nintendo" "Nintendo" ...
 $ NA_Sales    : num  41.5 29.1 15.8 15.8 11.3 ...
 $ EU_Sales    : num  29.02 3.58 12.88 11.01 8.89 ...
 $ JP_Sales    : num  3.77 6.81 3.79 3.28 10.22 ...
 $ Other_Sales : num  8.46 0.77 3.31 2.96 1 0.58 2.9 2.85 2.26 0.47 ...
 $ Global_Sales: num  82.7 40.2 35.8 33 31.4 ...
> summary(df)
      Rank           Name             Platform             Year          
 Min.   :    1   Length:16598       Length:16598       Length:16598      
 1st Qu.: 4151   Class :character   Class :character   Class :character  
 Median : 8300   Mode  :character   Mode  :character   Mode  :character  
 Mean   : 8301                                                           
 3rd Qu.:12450                                                           
 Max.   :16600                                                           
    Genre            Publisher            NA_Sales          EU_Sales      
 Length:16598       Length:16598       Min.   : 0.0000   Min.   : 0.0000  
 Class :character   Class :character   1st Qu.: 0.0000   1st Qu.: 0.0000  
 Mode  :character   Mode  :character   Median : 0.0800   Median : 0.0200  
                                       Mean   : 0.2647   Mean   : 0.1467  
                                       3rd Qu.: 0.2400   3rd Qu.: 0.1100  
                                       Max.   :41.4900   Max.   :29.0200  
    JP_Sales         Other_Sales        Global_Sales    
 Min.   : 0.00000   Min.   : 0.00000   Min.   : 0.0100  
 1st Qu.: 0.00000   1st Qu.: 0.00000   1st Qu.: 0.0600  
 Median : 0.00000   Median : 0.01000   Median : 0.1700  
 Mean   : 0.07778   Mean   : 0.04806   Mean   : 0.5374  
 3rd Qu.: 0.04000   3rd Qu.: 0.04000   3rd Qu.: 0.4700  
 Max.   :10.22000   Max.   :10.57000   Max.   :82.7400  
> 