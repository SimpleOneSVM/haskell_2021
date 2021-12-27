-- Лабораторна робота №5
-- Студент групи АнД-31
-- Савченко Владислав Максимович
-- Варіант №10

-- Завдання 1
-- Реалiзувати та скомпiлювати одну з програм, розроблених у лабораторнiй 
-- роботi No 3 для Вашого варiанта з введенням даних: а) з клавiатури, б) з
-- файлу та виведенням результатiв: в) на екран, г) у файл.

dropEvery _ [] = []
dropEvery n xs = take (n-1) xs ++ dropEvery n (drop n xs)

keyboardInput :: IO (Int, String)
keyboardInput = do
  putStrLn "Input Int"
  inp1 <- readLn :: IO (Int)
  putStrLn "Input String"
  inp2 <- getLine
  return (inp1, inp2)


main = do
    putStrLn "Hi, here's my LAB 5: Deleting every Xth symbol from a string"
    (input1, input2) <- keyboardInput
    let res = dropEvery input1 input2
    putStrLn "Result is: "
    putStrLn res