%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Do I Love You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Do I Love You - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Do I Love You - Ly - C Standard"}

%}
