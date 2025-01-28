%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Can't We Be Friends - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Can't We Be Friends - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Can't We Be Friends - Ly - F to G for Bb for Standard"}

%}
