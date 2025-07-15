%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Patti Page Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Let's Get Away From It All - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Get Away From It All - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Let's Get Away From It All - Ly - G Alto Voice"}

%}
