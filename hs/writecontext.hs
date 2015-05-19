data TempLocation = TempLocation FilePath FilePath

data WriteContext = WriteContext { writeLoc    :: TempLocation
                                 , writeHandle :: Handle
                                 , hashCtx     :: Ctx
                                 }
