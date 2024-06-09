%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/So Nice - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Samba de Verão (So Nice, Summer Samba) - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/So Nice - Ly - F Standard"}

%}
