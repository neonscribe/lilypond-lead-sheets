%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,,
whatClef = "bass"

\include "../Core/Someday My Prince Will Come - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Someday My Prince Will Come - B♭ Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Someday My Prince Will Come - Ly - Bb Bass for Standard"}

%}
