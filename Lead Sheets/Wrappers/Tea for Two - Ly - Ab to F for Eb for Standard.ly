%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Tea for Two - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Tea for Two - Ab to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Tea for Two - Ly - Ab to F for Eb for Standard"}

%}
