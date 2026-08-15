data Claim a = Claim
  { value :: a
  , provenance :: [String]
  } deriving (Show)

data Judgment a
  = Accepted a
  | Refused (Claim a) String
  deriving (Show)

admit :: (a -> Bool) -> Claim a -> Judgment a
admit predicate claim
  | predicate (value claim) = Accepted (value claim)
  | otherwise = Refused claim "inadmissible"

main :: IO ()
main = do
  print (admit even (Claim 42 ["sensor-a", "sensor-b"]))
  print (admit even (Claim 41 ["sensor-c"]))
