%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Jackie Cain (with Jackie & Roy), June Christy, Blossom Dearie, Norah Jones Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Spring Can Really Hang You Up the Most - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Spring Can Really Hang You Up the Most - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Spring Can Really Hang You Up the Most - Ly - Bb Alto Voice"}

%}
