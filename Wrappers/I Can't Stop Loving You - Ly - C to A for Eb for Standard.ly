%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/I Can't Stop Loving You - Ly Core - B.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Can't Stop Loving You - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I Can't Stop Loving You - Ly - C to A for Eb for Standard"}

%}
