%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Anita O'Day Key"
whatKey = d
whatClef = "treble_8"

\include "../Core/Falling in Love With Love Swing - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Falling in Love With Love (4/4) - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Falling in Love With Love Swing - Ly - D Alto Voice"}

%}
