%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/The Late Late Show - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Late Late Show - Ab to Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/The Late Late Show - Ly - Ab to Bb for Bb for Standard"}

%}
