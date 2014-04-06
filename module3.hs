--3章--
lucky :: Int->String
lucky 7="Lucky NUmber Seven!"
lucky x="Sorry,you're out of luck, pal!"

sayMe:: Int->String
sayMe 1="one"
sayMe 2="two"
sayMe 3="three"
sayMe 4="four"
sayMe 5="five"
sayMe x="not between 1 and 5"

factorial :: Int->Int
factorial 0=1
factorial n=n*factorial(n-1)

addVectors1 :: (Double,Double) -> (Double,Double) ->(Double,Double)
addVectors1 a b= (fst a +fst b,snd a+snd b)

addVectors2 :: (Double,Double) -> (Double,Double) ->(Double,Double)
addVectors2 (x1,y1) (x2,y2)= (x1+x2,y1+y2)

--トリプルの要素取り出し--

--first :: (a, b, c) -> a--
--first :: (x, _, _) = x--

--second :: (a, b, c) -> b--
--second :: (_, y, _) = y--

--third :: (a, b, c) -> c--
--third :: (_, _, z) = z--

--tell関数--
tell :: (Show a)=>[a]->String
tell []="The list is empty"
tell (x:[])="The list has one element:" ++ show x
tell (x:y:[])="The list has two elements:" ++ show x ++ " and "++ show y
tell (x:y:_) ="This list is long/ The first two elements are: "++ show x ++ " and "++ show y

firstLetter :: String->String
firstLetter ""= "Empty strings, whoops"
firstLetter all@(x:xs) = "The first letter of "++ all ++ " is " ++ [x]

--BMI--
bmiTell :: Double->Double->String
bmiTell weight height
  | bmi <= skinny = "You're underweight, you emo, you!"
  | bmi <= normal = "You're supposedly normal.\
			\ pffft, I bet you're ugly!"
  | bmi <= fat = "You're fat! Lose some weight, fatty!"
  | otherwise  	     = "You're whale, congratulations!"
  where bmi= weight/height^2
	skinny = 18.5
	normal = 25.0
	fat    = 30.0

badGreeting :: String
badGreeting = "Oh! Pfft. It's you,"

niceGreeting :: String
niceGreeting = "Hello! So very nice to see you,"

greet :: String->String
greet "Juan" = niceGreeting ++ " Juan!"
greet "Fernando" = niceGreeting ++ " Fernando!"
greet name = badGreeting ++ " " ++ name

initials :: String->String->String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstname
	  (l:_) = lastname
 
cylinder :: Double -> Double ->Double
cylinder r h =
	let sideArea = 2*pi*r*h
	    topArea = pi*r^2
	in  sideArea+2*topArea

calcBmis :: [(Double,Double)] -> [Double]
calcBmis xs = [bmi | (w,h) <- xs, let bmi = w/h^2]

head' :: [a] -> a
head' xs = case xs of [] -> error "No head for empty lists!"
		      (x:_) -> x

describeList :: [a] -> String
describeList ls = "The list is "
          ++ case ls of [] -> "empty"
			[x] -> "a singleton list."
			xs -> "a longer list."
