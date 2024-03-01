%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Perdido - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Perdido - B♭ Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Perdido - Ly - Bb Bass for Standard"}

%}
