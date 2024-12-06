%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Johnny Mathis Key"
whatKey = c
whatClef = "treble"

\include "../Core/I'll Be Home for Christmas - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Be Home for Christmas - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I'll Be Home for Christmas - Ly - C Standard"}

%}
