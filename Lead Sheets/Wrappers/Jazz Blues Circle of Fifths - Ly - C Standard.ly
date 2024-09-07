%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Jazz Blues Circle of Fifths - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jazz Blues Circle of Fifths - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Jazz Blues Circle of Fifths - Ly - C Standard"}

%}
