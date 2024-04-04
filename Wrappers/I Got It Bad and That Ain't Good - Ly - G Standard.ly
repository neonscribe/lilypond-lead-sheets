%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/I Got It Bad and That Ain't Good - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Got It Bad and That Ain't Good - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I Got It Bad and That Ain't Good - Ly - G Standard"}

%}
