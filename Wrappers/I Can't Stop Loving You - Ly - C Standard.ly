%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/I Can't Stop Loving You - Ly Core - B.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Can't Stop Loving You - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I Can't Stop Loving You - Ly - C Standard"}

%}
