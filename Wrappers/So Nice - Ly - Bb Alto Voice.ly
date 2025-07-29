%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Anita O'Day Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/So Nice - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Samba de Verão (So Nice, Summer Samba) - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/So Nice - Ly - Bb Alto Voice"}

%}
