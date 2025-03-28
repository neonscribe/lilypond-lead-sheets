%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = cs'
whatClef = "treble"

\include "../Core/Nature Boy Three - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nature Boy (3/4) - Em to C♯m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Nature Boy Three - Ly - Em to Csm for Eb for Standard"}

%}
