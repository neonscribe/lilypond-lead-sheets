%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Remember - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Remember - Ab to Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Remember - Ly - Ab to Bb for Bb for Standard"}

%}
