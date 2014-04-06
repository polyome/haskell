--fmap‚ÌŒ^--
--fmap :: (b -> c) -> Either a b -> Either a c--

--instance Functor IO where
--	fmap f action = do
--	  result <- action
--	  return (f result)

--main = do line <- fmap reverse getLine
--	putStrLn $ "You said " ++ line' ++ " backwards!"
--	putStrLn $ "Yes, you said " ++ line' ++ " backwards!"


sequenceA :: (Applicative f) => [f a] -> f [a]
sequenceA [] = pure []
sequenceA (x:xs) = (:) <$> x <*> sequenceA xs

