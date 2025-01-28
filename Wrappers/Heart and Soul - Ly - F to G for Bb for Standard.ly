%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Heart and Soul - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Heart and Soul - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Heart and Soul - Ly - F to G for Bb for Standard"}

%}
