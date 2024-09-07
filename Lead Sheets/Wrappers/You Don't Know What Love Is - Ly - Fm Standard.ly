%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/You Don't Know What Love Is - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Don't Know What Love Is - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/You Don't Know What Love Is - Ly - Fm Standard"}

%}
