%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = f'
whatClef = "treble"

\include "../Core/Poor Butterfly - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Poor Butterfly - Ab to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Poor Butterfly - Ly - Ab to F for Eb for Standard"}

%}
