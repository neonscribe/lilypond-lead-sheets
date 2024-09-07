%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Minor Swing - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Minor Swing - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Minor Swing - Ly - Am Standard"}

%}
