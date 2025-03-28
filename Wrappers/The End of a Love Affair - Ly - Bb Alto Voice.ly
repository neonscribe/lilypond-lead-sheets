%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/The End of a Love Affair - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The End of a Love Affair - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/The End of a Love Affair - Ly - Bb Alto Voice"}

%}
