--data Profession = Fighter | Archer | Accountant

--data Race = Human | Elf | Orc | Goblin

--data PlayerCharacter = PlayerCharacter Race Profession

--newtype CharList = CharList { getCharList :: [Char] } deriving (Eq, Show)


newtype CoolBool = CoolBool { getCoolBool :: Bool }

helloMe :: CoolBool -> String
helloMe :: (CoolBool _) = "hello"

--Monoid クラス --
--class Monoid m where
--	mempty :: m
--	mappend :: m -> m -> m
--	mconcat :: [m] -> m
--	mconcat = foldr mappend mempty


--instance Monoid [a] where
--	mempty = []
--	mappend = (++)

--newtype Product a = Product { getProduct :: a }
--	deriving (Eq, Ord, Read , Show, Bounded)

--instance Num a => Monoid (Product a) where
--	mempty = Product 1
--	Product x 'mappend' Product y = Product(x * y)

--Any 論理和--
newtype Any = Any {getAny :: Bool}
	deriving (Eq, Ord, Read, Show, Bounded)

instance Monoid Any where
	mempty = Any False
	Any x 'mappend' Any y = Any (x || y)

--All 論理積--
newtype All = All {getAll :: Bool}
	deriving (Eq, Ord, Read, Show, Bounded)

instance Monoid All where
	mempty = Al True
	All x 'mappend' All y = All (x && y)

--Ordering Monoid--
--instance Monoid Ordering where
--	mempry = EQ
--	LT 'mappend' _ = LT
--	EQ 'mappend' y = EQ
--	GT 'mappend' _ = GT

--lengthCompere :: String -> String -> Ordering
--lengthCompare x y = (length x 'compare' length y) 'mappend'
--		    (vowels x 'compare' vowels y) 'mappend'
--		    (x 'compare' y)
--	where vowels = length . filter ('elem' "aeiou")

--instance Monoid a => Monoid (Maybe a) where
--	mempty = Nothing
--	Nothing 'mappend' m = m
--	m 'append' Nothing = m
--	Just m1 'mappend' Just m2 = Just (m1 'mappend' m2)


instance F.Foldable Tree where
	forMap f EmptyTree = mempty
	forMap f (Node x l r) = F.foldMap f l 'mappend'
				f x	      'mappend'
				F.foldMap f r

testTree = Node 5
		(Node 3
		   (Node 1 EmptyTree EmptyTree)
		   (Node 6 EmptyTree EmptyTree)
		)
		(Node 9
		   (Node 8 EmptyTree EmptyTree)
		   (Node 10 EmptyTree EmptyTree)
		)