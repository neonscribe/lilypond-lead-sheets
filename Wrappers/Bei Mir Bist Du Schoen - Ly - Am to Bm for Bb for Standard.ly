%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = b
whatClef = "treble"

\include "../Core/Bei Mir Bist Du Schoen - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bei Mir Bist Du Schoen - Am to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Bei Mir Bist Du Schoen - Ly - Am to Bm for Bb for Standard"}

%}
