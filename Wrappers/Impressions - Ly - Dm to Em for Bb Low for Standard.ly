%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Standard Key"
whatKey = e,
whatClef = "treble"

\include "../Core/Impressions - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Impressions - Dm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Impressions - Ly - Dm to Em for Bb Low for Standard"}

%}
