%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Rose Room - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Rose Room - A♭ to B♭}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Rose Room - Ly - Ab to Bb for Bb for Standard"}

%}
