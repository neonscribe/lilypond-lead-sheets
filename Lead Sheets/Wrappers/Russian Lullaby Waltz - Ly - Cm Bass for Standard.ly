%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Russian Lullaby Waltz - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Russian Lullaby (Waltz) - Cm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Russian Lullaby Waltz - Ly - Cm Bass for Standard"}

%}
