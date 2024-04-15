%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Work Song - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Work Song - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Work Song - Ly - Fm Standard"}

%}
