-- Лабораторна робота №2
-- Студент групи АнД-31
-- Савченко Владислав Максимович
-- Варіант №10

-- Завдання 1
-- Знайти частоту входжень символів у рядок
import Data.Map (fromListWith, toList)

frequency xs = toList (fromListWith (+) [(x, 1) | x <- xs])


-- Завдання 2
-- Знайти прості дільники числа

prime_factors :: Int -> [Int]

prime_factors 1 = []
prime_factors n
  | factors == []  = [n]
  | otherwise = factors ++ prime_factors (n `div` (head factors))
  where factors = take 1 $ filter (\x -> (n `mod` x) == 0) [2 .. n-1]