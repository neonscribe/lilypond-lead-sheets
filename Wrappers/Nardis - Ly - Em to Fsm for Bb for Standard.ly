%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = fs
whatClef = "treble"

\include "../Core/Nardis - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nardis - Em to F♯m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Nardis - Ly - Em to Fsm for Bb for Standard"}

%}
