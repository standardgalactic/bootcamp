data Experiment evidence prediction observation = Experiment
  { horizon :: evidence
  , prediction :: prediction
  , observation :: Maybe observation
  } deriving (Show)

observe :: o -> Experiment e p o -> Experiment e p o
observe x experiment = experiment { observation = Just x }

main :: IO ()
main = do
  let pending = Experiment
        { horizon = ["sensor-a", "sensor-b"]
        , prediction = "device clock drifts"
        , observation = Nothing
        }
      resolved = observe "observed-before 2026" pending
  print pending
  print resolved
