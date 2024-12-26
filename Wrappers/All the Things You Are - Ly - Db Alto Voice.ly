%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald, Chris Connor, Helen Merrill Key"
whatKey = df
whatVerseKey = c
whatClef = "treble_8"

\include "../Core/All the Things You Are - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{All the Things You Are - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/All the Things You Are - Ly - Db Alto Voice"}

%}
