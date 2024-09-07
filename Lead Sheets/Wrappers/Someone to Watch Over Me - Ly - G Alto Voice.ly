%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alto Voice Key"
whatKey = g,
whatClef = "treble"

\include "../Core/Someone to Watch Over Me - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Someone to Watch Over Me - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Someone to Watch Over Me - Ly - G Alto Voice"}

%}
