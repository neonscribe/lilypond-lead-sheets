%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Repetition - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Repetition - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Repetition - Ly - Eb to F for Bb for Standard"}

%}
