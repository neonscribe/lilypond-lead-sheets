%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/That Old Black Magic - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{That Old Black Magic - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/That Old Black Magic - Ly - Eb to C for Eb for Standard"}

%}
