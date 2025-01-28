%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Just Squeeze Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Just Squeeze Me - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Just Squeeze Me - Ly - F to G for Bb for Standard"}

%}
