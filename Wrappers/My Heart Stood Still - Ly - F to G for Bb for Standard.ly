%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/My Heart Stood Still - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Heart Stood Still - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/My Heart Stood Still - Ly - F to G for Bb for Standard"}

%}
