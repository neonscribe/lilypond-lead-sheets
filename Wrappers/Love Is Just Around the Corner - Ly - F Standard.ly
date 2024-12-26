%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Love Is Just Around the Corner - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love Is Just Around the Corner - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Love Is Just Around the Corner - Ly - F Standard"}

%}
