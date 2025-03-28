%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/The End of a Love Affair - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The End of a Love Affair - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The End of a Love Affair - Ly - F Bass for Standard"}

%}
