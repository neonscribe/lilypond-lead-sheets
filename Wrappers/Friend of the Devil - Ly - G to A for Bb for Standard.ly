%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Friend of the Devil - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Friend of the Devil - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Friend of the Devil - Ly - G to A for Bb for Standard"}

%}
