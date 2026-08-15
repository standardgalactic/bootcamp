first :: a -> b -> a
first x _ = x

main :: IO ()
main = do
  print (first 42 (error "inadmissible continuation"))
