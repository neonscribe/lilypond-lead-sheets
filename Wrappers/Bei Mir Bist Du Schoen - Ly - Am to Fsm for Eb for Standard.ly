%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = fs
whatClef = "treble"

\include "../Core/Bei Mir Bist Du Schoen - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bei Mir Bist Du Schoen - Am to F\#m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Bei Mir Bist Du Schoen - Ly - Am to Fsm for Eb for Standard"}

%}
