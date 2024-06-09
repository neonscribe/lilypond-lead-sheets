%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = fs
bassKey = fs
whatClef = "treble"

\include "../Core/Strawberry Fields Forever - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Strawberry Fields Forever - A to F♯}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Strawberry Fields Forever - Ly - A to Fs for Eb for Standard"}

%}
