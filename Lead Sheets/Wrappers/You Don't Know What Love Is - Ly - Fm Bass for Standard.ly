%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/You Don't Know What Love Is - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Don't Know What Love Is - Fm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/You Don't Know What Love Is - Ly - Fm Bass for Standard"}

%}
