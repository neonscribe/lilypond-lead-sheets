%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Alto Voice"
whatKey = ef,
whatVerseKey = d,
whatClef = "bass"

\include "../Core/All the Things You Are - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{All the Things You Are - A♭ Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/All the Things You Are - Ly - Eb Bass for Alto Voice"}

%}
