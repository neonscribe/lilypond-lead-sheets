%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/I'm in the Mood for Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm in the Mood for Love - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I'm in the Mood for Love - Ly - C to D for Bb for Standard"}

%}
