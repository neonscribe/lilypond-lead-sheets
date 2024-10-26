%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Let's Fall in Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Fall in Love - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Let's Fall in Love - Ly - C to A for Eb for Standard"}

%}
