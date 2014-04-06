--Žl‘¥‰‰ŽZ‚ÌÝ’è--

--solveRPN :: String -> Double
--souleRPN = head . foldl foldingFunction [] . words
--	where foldingFunction (x:y:ys) "*" = (y * x) : ys
--	      foldingFunction (x:y:ys) "+" = (y + x) : ys
--	      foldingFunction (x:y:ys) "-" = (y - x) : ys
--	      foldingFunction (x:y:ys) "/" = (y / x) : ys
--	      foldingFunction (x:y:ys) "^" = (y ** x) : ys
--	      foldingFunction (x:xs) "ln" = log x : xs
--	      foldingFunction xs "sum" = [sum xs]
--	      foldingFunction xs numberString = read numberString:xs


--Å’ZŒo˜H--

--data Section = Section { get A :: Int, GetB :: Int, getC :: Int }
--		deriving(Show)

--type RoadSystem = [Section]

--heathrowToLondon :: RoadSystem
--heathrowToLondon = [ Section 50 10 30
--		   , Section 5 90 20
--		   , Section 40 2 25
--		   , Section 10 8 0
--		   ]

--data label = A | B | C deriving (Show)
--type path = [(Label, Int)]

--optimalPath :: RoadSystem -> Path
--optimalPath roadSystem =
--	let (bestAPath, bestBPath) = fold; roadStep ([], []) roadSystem
--	in if sum (map snd bestAPath) <= sum (map snd bestBPath)
--		then reverse bestAPath
--		else reverse bestBPath


--roadStep :: (path, Path) -> Section -> (Path, Path)
--roadStep  (PathA, PathB) (Section a b c) =
--	let timeA =sum (map snd pathA)
--	    timeB =sum (map snd pathB)
--	    forwardTimeToA = timeA + a
--	    crossTimeToA = timeB + b + c
--	    forwardTimeToB = timeB + b
--	    crossTimeToB = timeA + a + c
--	    newPathToA = if forwardTimeToA <= crossTimeToA
--				then (A, a):pathA
--				else (C, c):(B, b):pathB
--	    newPathToB = if forwardTimeToB <= crossTimeToB
--				then (B, b):pathB
--				else (C, c):(A, a):pathA

--groupOf :: Int -> [a] -> [[a]]
--groupOf 0 _ = undefined
--groupOf _ [] = []
--groupOf n xs = take n xs : groupOf n (drop n xs)

--main = do
--	contents <- getContents
--	let threes = groupOf 3 (map read $ lines contents)
--	    roadSystem = map (\[a,b,c] -> Section a b c) threes
--	    path = optimalPath roadSystem
--	    pathString = concat $ map (show . fst) path
--	    pathTime = sum $ map snd path
--	putStrLn $ "The best path to take is: " ++ pathString
--	putStrLn $ "Time taken: " ++ show pathTime
	