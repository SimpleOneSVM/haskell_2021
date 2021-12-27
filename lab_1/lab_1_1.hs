f :: Int -> Int -> Int -> Int
m :: [Int] -> Int
f a b c = min a (min b c)
m [a,b,c] = min a (min b c)
main = do
  print (f 6 4 5)
  print (m [6,4,5])
