%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/In the Still of the Night - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In the Still of the Night - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/In the Still of the Night - Ly - F to G for Bb for Standard"}

%}
