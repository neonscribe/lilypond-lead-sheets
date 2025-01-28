%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/That Old Black Magic - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{That Old Black Magic - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/That Old Black Magic - Ly - Eb Standard"}

%}
