%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Bossa Antigua - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bossa Antigua - Ab to Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Bossa Antigua - Ly - Ab to Bb for Bb Low for Standard"}

%}
