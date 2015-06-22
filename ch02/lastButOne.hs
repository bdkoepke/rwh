-- ch02/lastButOne.hs
lastButOne (x:xs) = if length xs == 1
                    then x
                    else lastButOne xs
