%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Jazz Blues Circle of Fifths - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jazz Blues Circle of Fifths - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Jazz Blues Circle of Fifths - Ly - C to A for Eb for Standard"}

%}
