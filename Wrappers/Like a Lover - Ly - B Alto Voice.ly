%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Lani Hall (with Sergio Mendes) Key"
whatKey = b,
whatClef = "treble_8"

\include "../Core/Like a Lover - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Like a Lover (O Cantador) - B}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Like a Lover - Ly - B Alto Voice"}

%}
