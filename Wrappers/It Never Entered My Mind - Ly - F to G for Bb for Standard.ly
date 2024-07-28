%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/It Never Entered My Mind - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It Never Entered My Mind - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/It Never Entered My Mind - Ly - F to G for Bb for Standard"}

%}
