%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = f'
whatClef = "treble"

\include "../Core/Along Came Betty - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Along Came Betty - Ab to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Along Came Betty - Ly - Ab to F for Eb for Standard"}

%}
