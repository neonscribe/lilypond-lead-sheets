processFile =
#(if (and (defined? 'inBook) inBook)
  "../Include/nothing.ily"
  "../Include/bookpart.ily")
  
\include \processFile
