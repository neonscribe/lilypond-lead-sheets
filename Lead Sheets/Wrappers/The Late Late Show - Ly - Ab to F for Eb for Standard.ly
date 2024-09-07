%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/The Late Late Show - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Late Late Show - Ab to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/The Late Late Show - Ly - Ab to F for Eb for Standard"}

%}
