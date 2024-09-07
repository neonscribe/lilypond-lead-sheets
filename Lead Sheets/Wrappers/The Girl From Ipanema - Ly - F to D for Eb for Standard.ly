%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/The Girl From Ipanema - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Girl From Ipanema - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/The Girl From Ipanema - Ly - F to D for Eb for Standard"}

%}
