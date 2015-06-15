import System.Environment

main = do
    a <- getArgs
    putStr "Number of turns to finish is "
    let n = fromInteger $ read $ head a in 
        print $ turns n
    return ()
    where
        turns n = (2^n) - 1
