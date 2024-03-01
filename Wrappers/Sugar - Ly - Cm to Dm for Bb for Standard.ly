%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Sugar - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sugar - Cm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Sugar - Ly - Cm to Dm for Bb for Standard"}

%}
