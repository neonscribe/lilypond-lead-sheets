%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Lulu's Back in Town - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lulu's Back in Town - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Lulu's Back in Town - Ly - Eb to C for Eb for Standard"}

%}
