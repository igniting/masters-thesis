foreign import ccall "pow" c_pow :: Double -> Double -> Double

main = print $ c_pow 3.0 4.0
