%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Carmen McRae, Sarah Vaughan Key"
whatKey = f
whatClef = "treble_8"

\include "../Core/Falling in Love With Love - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Falling in Love With Love - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Falling in Love With Love - Ly - F Alto Voice"}

%}
