%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = fs
whatClef = "treble"

\include "../Core/Lucy in the Sky With Diamonds - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lucy in the Sky With Diamonds - A to F♯}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Lucy in the Sky With Diamonds - Ly - A to Fs for Eb for Standard"}

%}
