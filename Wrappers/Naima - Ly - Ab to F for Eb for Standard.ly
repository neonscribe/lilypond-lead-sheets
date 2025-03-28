%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = f
bassKey = f
whatClef = "treble"

\include "../Core/Naima - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Naima - Ab to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Naima - Ly - Ab to F for Eb for Standard"}

%}
