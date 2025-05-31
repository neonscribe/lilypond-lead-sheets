%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Ceora - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Ceora - Ab to Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Ceora - Ly - Ab to Bb for Bb for Standard"}

%}
