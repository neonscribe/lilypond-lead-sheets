%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/The Girl From Ipanema - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Girl From Ipanema - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The Girl From Ipanema - Ly - F Standard"}

%}
