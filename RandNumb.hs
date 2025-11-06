import System.IO.Unsafe (unsafePerformIO)
import Data.Time.Clock.POSIX (getPOSIXTime)
import Control.Concurrent (threadDelay)

-- Nota, probe este codigo en un compilador online, dejo la liga para que lo pruebe
-- https://www.jdoodle.com/execute-haskell-online
getRandomNumber :: Int -> Int -> IO Int
getRandomNumber min_val max_val = do
    time <- getPOSIXTime
    let seed = floor (time * 1000000) `mod` (max_val - min_val + 1)
    return (min_val + seed)

repeatEverySecond :: IO () -> IO ()
repeatEverySecond action = loop 0
  where
    loop count
      | count >= 5 = return ()
      | otherwise = do
          action
          threadDelay 1000000 
          loop (count + 1)

printRandomNumber :: IO ()
printRandomNumber = do
    num <- getRandomNumber 0 99
    putStrLn $ "Random number: " ++ show num

main :: IO ()
main = repeatEverySecond printRandomNumber
