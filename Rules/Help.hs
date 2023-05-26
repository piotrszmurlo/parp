module Rules.Help where
import Rules.State
import Rules.Utils

help :: State -> IO State
help state = do printLines (helpText state)
                return state