--ギャング--
--isBigGang :: Int -> (Bool, String)
--isBigGang x = (x > 9, "Compared gang size to 9.")

--applyLog :: (Monoid m) => (a,m) -> (a -> (b, m)) -> (b,m)
--applyLog (x, log) f = let (y, newLog) = f x in (y, log 'mappend' newLog)

--ドリンク--
--addDrink :: Food -> (Food, Price)
--addDrink "beans" = ("milk", Sum 25)
--addDrink "jerky" -= ("whiskey", Sum 99)
--addDrink _ = ("beer", Sum 30)

--newtype Writer w a = Writer { runWriter :: (a, w) }

--instance (Monoid w) => Monoid (Writer w) where
--	return x = Writer (x,mempty)
--	(writer (x, v)) >>= f = let (Writer (y, v')) = f x
--				  in Writer (y, v 'mappend' v')

--logNumber :: Int -> Writer [String] Int
--logNumber x = writer (x, ["Got number: " ++ show x])

--multWithLog :: Writer [String] Int
--multWithLog = do
--   a <- logNumber 3
--   b <- logNumber 5
--   tell ["Gonna multiply these two"]
--   return (a*b)

--gcd' :: Int -> Int -> Writer [String] Int
--gcd' a b
--	| b == 0 = do
--		tell ["Finished with " ++ show a]
--		return a
--	| otherwise	= do
--		tell[show a ++ " mod " ++ show b ++ " = " ++ show (a `mod` b)]
--		gcd' b (a `mod` b)

--gcdReverse :: Int -> Int -> Writer [String] Int
--gcdReverse a b
--	| b == 0 = do
--		tell ["Finished with " ++ show a]
--		return a
--	| otherwise	= do
--		result <- gcdReverse b (a `mod` b)
--		tell[show a ++ " mod " ++ show b ++ " = " ++ show (a `mod` b)]
--		return result



----

toDiffList :: [a] -> DiffList a
toDiffLift xs = DiffList (xs++)

fromDiffList :: DiffList a -> [a]
fromDiffList (DiffList f) = f []

instance Monoid (DiffList a) where
	mempty = DiffList (\xs -> [] ++ xs)
	(DiffList f) `mappend` (DiffList g) = DiffList (\xs -> f (g xs))

--カウントダウン--
finalCountDown :: Int -> Writer (DiffList String) ()
finalCountDown 0 = do
	tell (toDiffList ["0"])
finalCountDown x = do
	finalCountDown (x-1)
	tell (toDiffList [show x])

--??--
