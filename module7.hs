--area :: Shape -> Float
--area (Circle _ _ r) = pi * r^2
--area (Rectangle x1 y1 x2 y2) = (abs $ x2-x1) * (abs $ y2-y1)

nudge :: Shape -> Float -> Float -> Shape
nudge (Circle (Point x y9 r) a b = Circle (Point (X+a) (y+b)) r
nudge (Rectangle (Point x1 y1) (Point x2 y2)) a b
    = Rectangle (Point (x1+a) (y1+b)) (Point (X2+a) (y2+b))

--baseCircle :: Float -> Shape
--baseCircle r = Circle (Point 0 0) r

--baseRect :: Float -> Float -> Shape
--baseRect width height = Rectangle (Point 0 0) (Point width height)

data Person = Person { firstname :: String
		     , lastname :: String
		     , age :: Int
		     , height :: Float
		     , phoneNumber :: String
		     , flavor :: String } deriving (Show)

data Person = Person { firstName :: String
		     , lastName :: String
		     , age :: Int
		     } deriving (Eq, Show. Read)

mikeD = Person {firstName = "Michael" , lastName = "Diamond" , age= 43}
adRock = Person {firstName = "Adam" , lastName = "Horovitz" , age= 41}
mca = Person {firstName = "Adam" , lastName = "Yauch" , age= 44}

data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
	deriving (Eq, Ord, Show, Read, Bounded, Enum)

phoneBook :: [(String,String)]
phoneBook =
	[("betty", "555-2938")
	,("bonnie", "452-2928")
	,("patsy", "493-2928")
	,("lucille", "205-2928")
	,("wendy", "939-8282")
	,("penny", "853-2492")
	]

lockerLookup :: Int -> LockerMap -> Either String Code
lockerLookup lockerNumber map = case Map.lookup lockerNumber map of 
	Nothing -> left $ "Locker " ++ show lockerNumber
			++ " doesn't exist!"
	Just (state, code9 -> if state /=Taken
				then Right code
				else Left $ "Locker " ++ show lockerNumber
						++ " is already taken!"

lockers :: LockerMap
lockers = map.fromList
	[(100, (Taken, "ZD39I"))
	,(101, (Free, "JAH3I"))
	,(103, (Free, "IQSA9"))
	,(105, (Free, "QQTSA"))
	,(109, (Taken, "893JJ"))
	,(110, (Taken, "99292"))
	]

singlenton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a > Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right)
	| x == a = Node x left right
	| x < a  = Node a (treeInsert x left) right
	| x > a  = Node a left (treeInsert x right)

instance Show TrafficLight where
   show Red = "Red light"
   show Green = "Green light"
   show Yellow = "Yellow light"

yesnoIf :: (YesNo y) => y -> a -> a -> a
yesnoIf yesnoVal yesResult noResult =
	if yesno yesnoVal
	    then yesResult
	    else noresult

instance Functor Maybe where
	fmap f (Just x) = Just (f x)
	fmap f Nothing = Nothing

instance Functor Tree where
	fmap f emptyTree = EmptyTree
	fmap f (Node x left right) = Node (f x) (fmap f left) (fmap f right)

instance Functor (Either a) where
	fmap f (Right x) = Right (f x)
	fmap f (Left x)  = Left x