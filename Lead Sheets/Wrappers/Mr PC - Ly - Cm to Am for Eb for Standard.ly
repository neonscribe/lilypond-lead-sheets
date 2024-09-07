%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Mr PC - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Mr. P.C. - Cm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Mr PC - Ly - Cm to Am for Eb for Standard"}

%}
