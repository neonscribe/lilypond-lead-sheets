%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/I Got It Bad and That Ain't Good - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Got It Bad and That Ain't Good - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I Got It Bad and That Ain't Good - Ly - G to E for Eb for Standard"}

%}
