%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Tea for Two - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Tea for Two - A♭ to B♭}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Tea for Two - Ly - Ab to Bb for Bb for Standard"}

%}
