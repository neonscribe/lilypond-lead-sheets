%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = b,
whatClef = "treble"

\include "../Core/Dear Mr Fantasy - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dear Mr. Fantasy - A to B}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Dear Mr Fantasy - Ly - A to B for Bb for Standard"}

%}
