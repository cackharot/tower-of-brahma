{-# LANGUAGE CPP #-}
import System.Environment

numberOfPegs ::  Integer
numberOfPegs = 3

createPegs n = [[1..n], [], []]

main ::  IO ()
main = do
    args <- getArgs
    putStr "Number of turns to finish is "
    let noOfDiscs = fromInteger $ read $ head args; pegs = createPegs noOfDiscs in 
        do
            print $ turns noOfDiscs
            print pegs
            process' pegs
            return ()
    return ()
    where
        turns n = (2^n) - 1

pegA = head
pegB pegs = pegs !! 1
pegC pegs = pegs !! 2

process' pegs@(x:xs) 
    | null x = return []
    | otherwise = do
                print x
                print xs
                print g
                process' g
                return g 
    where g = process pegs

process pegs = [a,b,c]
    where
        b = [last $ pegA pegs]
        c = pegB pegs:[last $ init $ pegA pegs]
        a = pegC pegs:init $ init $ pegA pegs
    
