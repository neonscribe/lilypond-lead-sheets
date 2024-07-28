%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Anne Murray Key"
whatKey = f
whatClef = "treble"

\include "../Core/I Can't Stop Loving You - Ly Core - B.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Can't Stop Loving You - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Can't Stop Loving You - Ly - F Alto Voice"}

%}
