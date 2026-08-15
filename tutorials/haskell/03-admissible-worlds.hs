import qualified Data.Set as Set

type World = String

data Horizon = Horizon
  { admissible :: Set.Set World
  } deriving (Show)

refine :: Horizon -> (World -> Bool) -> Horizon
refine h predicate = h { admissible = Set.filter predicate (admissible h) }

shrinksOrEqual :: Horizon -> Horizon -> Bool
shrinksOrEqual old new = admissible new `Set.isSubsetOf` admissible old

main :: IO ()
main = do
  let t0 = Horizon (Set.fromList ["w1", "w2", "w3", "w4"])
      t1 = refine t0 (`elem` ["w1", "w2", "w4"])
      t2 = refine t1 (`elem` ["w2"])
  print t0
  print t1
  print t2
  print (shrinksOrEqual t0 t1)
  print (shrinksOrEqual t1 t2)
