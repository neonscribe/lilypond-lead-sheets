%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Au Privave - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Au Privave - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Au Privave - Ly - F to G for Bb for Standard"}

%}
