--main = do
--	putStrLn "Hello, what's your first name?"
--	firstName <- getLine
--	putStrLn "Hello, what's your last name?"
--	lastName <- getLine
--	let bigFitstName = map toUpper firstName
--	    bigLastName = map toUpper lastName
--	putStrLm $ "hey " ++ bigFirstName ++ " "
--			  ++ bigLastName
--			  ++ ", how are you?"]

--main = do
--	return ()
--	return "HAHAHA"
--	line <- getLine
--	return "BLAH BLAH BLAH"
--	return 4
--	putStrtLn line

--main = do
--	putStr "Hey, "
--	putStr "I'm "
--	putStrLn "Andy!"

--main = do
--	putChat 't'
--	putChat 'e'
--	putChat 'n'

--putStr :: String -> IO()
--putStr [] = return ()
--putStr (x:xs) = do
--	putChar x
--	putStr xs

--main = do
--	print True
--	print 2
--	print "haha"
--	print 3.2
--	print [3,4,3]

--main = do
--	input <- getLine
--	when (input == "SWORDFISH" ) $do
--		putStrLN input

--main = forever $ do
--	putStr "Give me some input: "
--	l <- getLine
--	putStrLn $ map toUpper l

--main = do
--	colors <- forM [1,2,3,4] $ \a -> do
--	  putStrLn $ "Which color do you associate with the number "
--			++ show a ++ "?"
--	  color <- getLine
--	  return color
--	putStrLn "The colors that you associate with 1, 2, 3 and 4 are: "
--	mapM putStrLn colors

