%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Night Train - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Night Train - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Night Train - Ly - Bb to G for Eb for Standard"}

%}
