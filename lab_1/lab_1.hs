-- Лабораторна робота №1
-- Студент групи АнД-31
-- Савченко Владислав Максимович
-- Варіант №10

-- Завдання 1
-- Наведiть приклади виразiв вказаного типу. Кожен список має мiстити кiлька елементiв. Перегляньте тип прикладiв, як їх визначає ghci. Прокоментуйте. 
-- (([Double],[Char]),[Integer])

ex1 = (([2.3,1.4],['a','b','c']),[1,2,3])

-- Завдання 2
-- Визначте два варiанти вказаних далi функцiй, де аргументи будуть представленi а) як один кортеж, б) без використання кортежiв чи спискiв.
-- Функцiя приймає три числа i повертає найменше з них.


f :: Int -> Int -> Int -> Int
m :: [Int] -> Int
f a b c = min a (min b c)
m [a,b,c] = min a (min b c)
main = do
  print (ex1)
  print (f 6 4 5)
  print (m [6,4,5])


-- Висновок.
-- Haskell - функціональна мова програмування, зі своїми перевагами та недоліками порівняно з імперативними мовами.
-- У цій роботі я навчився створювати базові функції мовою Haskell, а також вивчив її типи.