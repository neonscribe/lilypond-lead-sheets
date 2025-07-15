%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/You Turned the Tables on Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Turned the Tables on Me - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/You Turned the Tables on Me - Ly - F to D for Eb for Standard"}

%}
