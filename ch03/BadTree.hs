-- file: ch03/BadTree.hs
-- bad_nodesAreSame (Node a _ _) (Node a _ _) = Just a
-- bad_nodesAreSame _            _            = Nothing
data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

nodesAreSame (Node a _ _) (Node b _ _)
    | a == b     = Just a
nodesAreSame _ _ = Nothing
