--applyMaybe :: Maybe a -> (a -> Maybe b) -> Maybe b
--applyMaybe Nothing f = Nothing
--applyMaybe (Just x) f = f x

--class Monad m where
--	return :: a -> m a

--	(>>=) : m a -> (a -> m b) -> m b

--	(>>) :: m a -> m b -> m b
--	x >> y = x >>= \_ -> y

--	fail :: String -> m a
--	fail msg = error msg

--instance Monad Maybe where
--	return x = Just x
--	Nothing >>= f = Nothing
--	Just x >>= f = f x
--	fail _ = Nothing

--type Birds = Int
--type Pole = (Birds, Birds)

--landLeft :: Birds -> Pole -> Maybe Pole
--landLeft n (left, right)
--	| abs((left + n) - right) < 4 = Just (left + n, right)
--	| otherwise		      = Nothing

--landRight :: Birds -> Pole ->Maybe Pole
--landRight n (left, right) 
--	| abs(left - (right + n)) < 4 = Just (left, right + n) 
--	| otherwise		      = Nothing

routine :: Maybe Pole
routine = do
	start <- return (0, 0)
	first <- landLeft 2 start
	second <- landRight 2 first
	landLeft 1 second

--上のコードのモナドを利用しないver--
--routine :: Maybe Pole
--routine = case landLeft 1 (0, 0) of
--	Nothing -> Nothing
--	Just pole1 -> case landRight 4 pole1 of
--		Nothing -> Nothing
--		Just pole2 -> case landLeft 2 pole2 of
--			Nothing -> Nothing
--			Just pole3 -> landLeft 1 pole3 


--banana--
--banana :: Pole -> Maybe Pole
--banana _ = Nothing

--foo--
--foo : maybe String
--foo = do
--    x <- Just 3
--    y <- Juse "!"
--    Just (show x ++ y)

--marySue ?--
--marySue :: maybe Bool
--marySue = do
--	x <- Just 9
--	Just (x > 8)
--


--ナイト駒--
type KnightPos = (Int, Int)

moveKnight :: KnoghtPos -> [KnoghtPos]
moveKnight (c,r) = do
	(c', r') <- [(c+2,r-1),(c+2,r+1),(c-2,r-1),(c-2,r+1)
			,(c+1,r-2),(c+1,r+2),(c-1,r-2),(c-1,r+2)]
	guard (c' `elem` [1..8] && r' `elem` [1..8])
	return (c', r')

in3 :: KnightPos ->[KnightPos]
in3 start = do
	fitst <- moveKnight start
	second <- moveKnight first
	moveKnight second

canReachIn3 :: KnightPos -> KnightPos -> Bool
canReachIn3 start end = end `elem` in3 start


