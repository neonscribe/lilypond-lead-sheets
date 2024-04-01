%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = fs
whatClef = "treble"

\include "../Core/Dear Mr Fantasy - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dear Mr. Fantasy - A to F♯}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Dear Mr Fantasy - Ly - A to Fs for Eb for Standard"}

%}
