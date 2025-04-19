%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = cs
whatClef = "treble"

\include "../Core/Sway - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sway - Em to C\#m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Sway - Ly - Em to Csm for Eb for Standard"}

%}
