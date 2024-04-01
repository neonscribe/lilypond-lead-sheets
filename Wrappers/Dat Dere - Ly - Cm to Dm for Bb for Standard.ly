%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Dat Dere - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dat Dere - Cm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Dat Dere - Ly - Cm to Dm for Bb for Standard"}

%}
