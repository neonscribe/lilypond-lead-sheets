%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/I'll Take Romance Swing - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Take Romance (4/4) - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I'll Take Romance Swing - Ly - F to G for Bb for Standard"}

%}
