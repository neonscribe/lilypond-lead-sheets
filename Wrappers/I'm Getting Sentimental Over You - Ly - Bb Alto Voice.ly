%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/I'm Getting Sentimental Over You - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm Getting Sentimental Over You - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I'm Getting Sentimental Over You - Ly - Bb Alto Voice"}

%}
