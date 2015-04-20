-- file: ch03/Tree.hs
data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)
simpleTree = Node "parent" (Node "left child" Empty Empty)
                           (Node "right child" Empty Empty)

data MaybeTree a = MaybeNode a (Maybe (MaybeTree a)) (Maybe (MaybeTree a))

treeHeight Empty               = 0
treeHeight (Node _ Empty right) = 1 + treeHeight right
treeHeight (Node _ left  Empty) = 1 + treeHeight left
treeHeight (Node _ left  right) = 1 + max (treeHeight left) (treeHeight right)
