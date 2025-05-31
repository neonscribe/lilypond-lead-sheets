%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Nancy With the Laughing Face - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nancy With the Laughing Face - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Nancy With the Laughing Face - Ly - Eb to F for Bb for Standard"}

%}
