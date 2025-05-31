%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/I'll Never Smile Again - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Never Smile Again - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I'll Never Smile Again - Ly - Eb to F for Bb for Standard"}

%}
