introInclude =
#(if (and (defined? 'noIntro) noIntro)
  "../Include/nothing.ily"
  "../Include/intro.ily")
