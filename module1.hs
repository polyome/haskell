--1Í
doubleMe x = x + x
doubleUs x y = doubleMe x+ doubleMe y
doubleSmallNumber x = if x > 100
			then x
			else x*2
doubleSmallNumber' x =( if x > 100 then x else x*2 )+1
boomBangs xs = [if x < 10 then "BOOM" else "BANG" | x <- xs, odd x]
triangle tr = [(a,b,c)|c<-[1..10],a<-[1..c],b<-[1..a],a^2+b^2==c^2]