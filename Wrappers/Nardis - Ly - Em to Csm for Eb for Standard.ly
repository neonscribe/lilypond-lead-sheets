%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = cs'
whatClef = "treble"

\include "../Core/Nardis - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nardis - Em to C♯m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Nardis - Ly - Em to Csm for Eb for Standard"}

%}
