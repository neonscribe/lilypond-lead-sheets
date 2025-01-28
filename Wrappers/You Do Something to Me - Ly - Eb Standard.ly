%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/You Do Something to Me - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Do Something to Me - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/You Do Something to Me - Ly - Eb Standard"}

%}
