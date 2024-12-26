%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Love Is Just Around the Corner - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love Is Just Around the Corner - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Love Is Just Around the Corner - Ly - F to D for Eb for Standard"}

%}
