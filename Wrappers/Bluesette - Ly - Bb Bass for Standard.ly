%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Bluesette - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bluesette - B♭ Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Bluesette - Ly - Bb Bass for Standard"}

%}
