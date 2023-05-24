module Rules.PlotPoints where

data PlotPoint = PlotPoint
  { locationName :: String,
    locationDescription :: [String],
    people :: [Person],
    items :: [Item]
  }