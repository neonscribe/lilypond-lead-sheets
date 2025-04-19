%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = fs
whatClef = "treble"

\include "../Core/Sway - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sway - Em to F\#m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Sway - Ly - Em to Fsm for Bb for Standard"}

%}
