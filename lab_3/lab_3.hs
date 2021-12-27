-- Лабораторна робота №3
-- Студента групи АнД-31
-- Савченка Владислава Максимовича
-- Варіант №10

-- Завдання 1
dropEach _ [] = []
dropEach n xs = take (n-1) xs ++ dropEach n (drop n xs)


-- Завдання 1 з вбудованими функціями

groups :: Int -> [a] -> [[a]]
groups n = map (take n) . takeWhile (not . null) . iterate (drop n)

remN :: Int -> [a] -> [a]
remN n = concatMap (take (n-1)) . groups n


-- Завдання 2

prime :: Integer -> Integer -> [Integer]
prime m n = [x | x <- list, x>=m, x<=n]
 
list :: [Integer]
list = 2 : [x | x <- [3..], right x]
 
right :: Integer -> Bool
right x = foldr (\p r -> p*p>x || (mod x p /= 0 && r)) True list

main = do print(" ")