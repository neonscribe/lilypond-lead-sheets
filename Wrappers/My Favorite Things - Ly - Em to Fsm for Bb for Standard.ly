%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = fs
whatClef = "treble"

\include "../Core/My Favorite Things - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Favorite Things - Em to F♯m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/My Favorite Things - Ly - Em to Fsm for Bb for Standard"}

%}
