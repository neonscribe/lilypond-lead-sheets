%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/The Girl From Ipanema - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Girl From Ipanema - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/The Girl From Ipanema - Ly - F to G for Bb for Standard"}

%}
