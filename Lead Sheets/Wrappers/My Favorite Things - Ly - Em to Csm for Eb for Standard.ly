%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = cs'
whatClef = "treble"

\include "../Core/My Favorite Things - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Favorite Things - Em to C♯m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/My Favorite Things - Ly - Em to Csm for Eb for Standard"}

%}
