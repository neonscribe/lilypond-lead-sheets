%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Moanin' Low - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moanin' Low - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Moanin' Low - Ly - F to G for Bb for Standard"}

%}
