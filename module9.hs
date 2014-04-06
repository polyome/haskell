--main = do
--	contents <- getContents
--	putStr $ map toUpper contents

--main = do
--	contents <- getContents4
--	putStr (shortLinesOnly contents)

--shortLinesOnly :: String -> String
--shortLinesOnly = unlines . filter (\line -> length line < 10) . lines


--main = interact shortLinesOnly
--shortLinesOnly :: String -> String
--shortLinesOnly = unlines . filter (\line -> length line < 10) . lines

--respondPalindromes :: String -> String
--respondPalindromes =
--	unlines .
--	map (\xs -> if ispal xs then "palindrome" else "notpalindrome") .
--	lines

--isPal :: String -> Bool
--isPal xs = xs == reverse xs

--main = do
--	handle <- openFile "baabaa.txt" ReadMode
--	contents <- hGetContents handle
--	putStr contents
--	hClose handle

--main = do
--	withFile "baabaa.txt" ReadMode $ \handle -> do
--	   contents <- hGetContents handle
--	   putStr contents

--withFile :: FilePath -> IOMode -> (handle -> IO a) -> IO a
--withFile name mode f = bracket (openFile name mode)
--	(\handle -> hClose handle)
--	(\handle -> f handle)

--main = do
--	todoItem <- getLine
--	appendFile "todo.txt" (todoItem ++ "\n")


--dispatch :: String -> [String] -> IO()
--dispatch "add" = add
--dispatch "view" = view
--dispatch "remove" = remove
--dispatch command = doesntxist command

--doesntExist :: String -> [String] -> IO()
--doesntExist command _ =
--	putStrLn $ "The " ++ command ++ " command doesn't exist"	--í«â¡çs--


--main = do
--	(command:argList) <- getArgs
--	dispatch command argList
--add :: [String] -> IO()
--add [fileName, todoItem] = appendFile fileName (todoItem ++ "\n")
--add _ = putStrLn "The add command takes exactly two arguments"	--í«â¡çs--
--
--view :: [String] -> IO()
--view [fileName] = do
--	contents <- readFile fineName
--	let todoTasks = lines contents
--	    numberedTasks = zipWith (\n line -> show n ++ " - " ++ line)
--				[0..] todoTasks
--	putStr $ unlines numberdTasks
--
--remove :: [String] -. IO()
--remove [fileName, numberString] = do
--	contents <- readFile fileName
--	let todoTasks = lines contents
--	    numberedTasks = zipWith (\n line -> show n ++ " - " ++ line)
--					[0..] todoTasks
--	putStrLn "These are your TO-DO items:"
--	mapM_ putStrLn numberedTasks
--	putStrLn "Which one do you want to delete?"
--	numberStrling <- getLine
--	let number = read numberString
--	    newTodoItems = unlines $ delete $ delete (todoTasks !! number) todoTasks
--	bracketOnError (openTempFile "." "temp")
--		(\(tempName, tempHandle) -> do
--			hClose tempHandle
--			removeFile tempName)
--		(\(tempName, tempHandle) -> do
--			hputStr temphandle newTodoItems
--			hClose tempHandle
--			removeFile fileName
--			renameFile tempName fileName)


--random :: (RandomGen g, Random a) => g -> (a,g)

--threeCoins :: StrGen -> (Bool, Bool, Bool)
--threeCoins gen =
--	let (firstCoin, newGen) = random gen
--	    (secondCoin, newGen') = random newGen
--	    (thirdCoin, newGen'') = random newGen'
--	in  (firstCoin, secondCoin, thirdCoin)

--finiteRandoms :: (RandomGen g, Random a, Num n) => n -> g -> ([a],g)
--finiteRandoms 0 gen = ([], gen)
--finiteRandoms n gen =
--	let (value, newGen) = random gen	
--	    (restOfList, finalGen) = finiteRandoms (n-1) newGen
--	in  (value : restOfList, finalGen)

--main = do
--	gen <- getStdGen
--	askForNumber gen
--
--askForNumber :: StrGen -> IO()
--askForNumber gen = do
-- 	let (randNumber,newGen) = randomR (1,10) gen :: (Int, stdGen)
--	putStrLn "Which number in the range from 1 to 10 am I thinking of? "
--	numberStrin <- getLine
--	when (not $ null numberString) $ do
--		let number = read numberString
--		in randNumber == number
--			then putStrLn "you are correct!"
--			else putStrLn $ "Sorry, it was " ++ show randNumber
--		askForNumber newGen

--main do
	(fileName1:fileName2:_) <- getArgs
	copy fileName1 fileName2

copy source dest = do
	contents <- B.readFile source
	bracketOnError
		(openTempFile "." "temp")
		(\(tempName, tempHandle) -> do
		 hClose temphamdle
		 removeFile tempName)
		(\(tempName, tempHandle) -> do
		 B.hPutStr tempHandle contents
		 hClose tempHandle
		 renameFile tempName dest)