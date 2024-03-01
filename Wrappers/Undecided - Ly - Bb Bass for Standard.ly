%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,,
whatClef = "bass"

\include "../Core/Undecided - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Undecided - B♭ Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Undecided - Ly - Bb Bass for Standard"}

%}
