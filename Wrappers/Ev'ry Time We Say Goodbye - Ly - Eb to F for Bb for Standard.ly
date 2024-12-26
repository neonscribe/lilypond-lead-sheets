%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Ev'ry Time We Say Goodbye - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Ev'ry Time We Say Goodbye - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Ev'ry Time We Say Goodbye - Ly - Eb to F for Bb for Standard"}

%}
