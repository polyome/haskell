freeTree :: Tree Char
freeTree =
	Node'p'
	  (Node 'O'
		(Node 'L'
			(Node 'N' Empty Empty)
			(Node 'T' Empty Empty)
		)
		(Node 'Y'
			(Node 'S' Empty Empty)
			(Node 'A' Empty Empty)
		)
	   )
	  (Node 'L'
		(Node 'W'
			(Node 'C' Empty Empty)
			(Node 'R' Empty Empty)
		)
		(Node 'A'
			(Node 'A' Empty Empty)
			(Node 'C' Empty Empty)
		)
	   )

data Direction = L | R deriving (Show)
type Directions = [Direction]

changeToP :: Directions -> Tree Char -> Tree Char
changeToP (L:ds) (Node x 1 r) = Node x (changeToP ds 1) r
changeToP (R:ds) (Node x 1 r) = Node x 1 (changeToP ds r)
changeToP [] (Node _ 1 r) = Node 'P' 1 r

