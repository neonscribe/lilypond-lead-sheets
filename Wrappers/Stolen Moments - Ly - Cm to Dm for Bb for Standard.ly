%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Stolen Moments - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stolen Moments - Cm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Stolen Moments - Ly - Cm to Dm for Bb for Standard"}

%}
