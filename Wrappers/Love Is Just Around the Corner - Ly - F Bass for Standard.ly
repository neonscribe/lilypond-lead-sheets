%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Love Is Just Around the Corner - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love Is Just Around the Corner - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Love Is Just Around the Corner - Ly - F Bass for Standard"}

%}
