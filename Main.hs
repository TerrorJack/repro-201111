{-# OPTIONS_GHC -Wall #-}

import System.Process

main :: IO ()
main = do
  (_, _, _, ph) <-
    createProcess $
      (proc "sleep" ["21600"]) {use_process_jobs = True}
  terminateProcess ph
  print =<< waitForProcess ph
