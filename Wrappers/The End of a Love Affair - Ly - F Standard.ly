%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/The End of a Love Affair - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The End of a Love Affair - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The End of a Love Affair - Ly - F Standard"}

%}
