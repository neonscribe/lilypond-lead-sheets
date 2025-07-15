%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Peggy Lee Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Love Is Just Around the Corner - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love Is Just Around the Corner - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Love Is Just Around the Corner - Ly - Bb Alto Voice"}

%}
