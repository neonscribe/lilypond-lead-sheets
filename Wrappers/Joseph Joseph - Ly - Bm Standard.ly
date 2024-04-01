%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = b
whatClef = "treble"

\include "../Core/Joseph Joseph - Ly Core - Bm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Joseph, Joseph (Yossel, Yossel) - Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Joseph Joseph - Ly - Bm Standard"}

%}
