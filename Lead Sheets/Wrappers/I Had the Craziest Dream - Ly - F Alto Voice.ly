%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Beverley Kenney Key"
whatKey = f,
whatClef = "treble"

femaleSinger = ##t

\include "../Core/I Had the Craziest Dream - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Had the Craziest Dream - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Had the Craziest Dream - Ly - F Alto Voice"}

%}
