%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/The End of a Love Affair - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The End of a Love Affair - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/The End of a Love Affair - Ly - F to D for Eb for Standard"}

%}
