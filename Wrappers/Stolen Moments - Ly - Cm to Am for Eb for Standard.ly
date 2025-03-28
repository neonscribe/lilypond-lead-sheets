%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Stolen Moments - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stolen Moments - Cm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Stolen Moments - Ly - Cm to Am for Eb for Standard"}

%}
