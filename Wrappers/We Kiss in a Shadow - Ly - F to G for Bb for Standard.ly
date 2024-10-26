%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/We Kiss in a Shadow - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{We Kiss in a Shadow - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/We Kiss in a Shadow - Ly - F to G for Bb for Standard"}

%}
