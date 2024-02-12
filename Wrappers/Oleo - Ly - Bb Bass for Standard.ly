%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,,
whatClef = "bass"

\include "../Core/Oleo - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Oleo - B♭ Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Oleo - Ly - Bb Bass for Standard"}

%}
