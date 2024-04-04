%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/I Got It Bad and That Ain't Good - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Got It Bad and That Ain't Good - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I Got It Bad and That Ain't Good - Ly - G to A for Bb for Standard"}

%}
