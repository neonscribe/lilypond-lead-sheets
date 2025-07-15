%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Lulu's Back in Town - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lulu's Back in Town - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Lulu's Back in Town - Ly - Eb Standard"}

%}
