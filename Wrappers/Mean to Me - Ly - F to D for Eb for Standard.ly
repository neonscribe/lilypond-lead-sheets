%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Mean to Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Mean to Me - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Mean to Me - Ly - F to D for Eb for Standard"}

%}
