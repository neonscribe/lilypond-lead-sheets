%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Sandu - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sandu - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Sandu - Ly - Eb to F for Bb for Standard"}

%}
