%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Tenor Madness - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Tenor Madness - B♭ Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Tenor Madness - Ly - Bb Bass for Standard"}

%}
