--wordNums :: String -> [(String,Int)]
--wordNums = map (\ws ->(head ws, length ws)) . group . sort . words

--isIn :: (Eq a) => [a] -> [a] -> Bool
--needle `isIn` haystack = any (needle `isPrefixOf`) (tails haystack)

--encode :: Int -> String -> String
--encode offset msg = map (\c -> chr $ ord c + offset) msg

--decode :: Int -> String -> String
--decode shift msg = encode (negate shift) msg

--digitSum :: Int -> Int
--digitSum = sum . map digitToInt . show

