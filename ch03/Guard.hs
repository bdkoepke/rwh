-- file: ch03/Guard.hs
fromMaybe defaultValue wrapped =
    case wrapped of
         Nothing    -> defaultValue
         Just value -> value
