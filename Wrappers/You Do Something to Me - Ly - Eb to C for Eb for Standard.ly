%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/You Do Something to Me - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Do Something to Me - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/You Do Something to Me - Ly - Eb to C for Eb for Standard"}

%}
