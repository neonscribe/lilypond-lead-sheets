%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Easier Guitar Key"
whatKey = fs
whatClef = "treble"

\include "../Core/Take Five - Ly Core - Ebm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Take Five - Em to F♯m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Take Five - Ly - Em to Fsm for Bb for Standard"}

%}
