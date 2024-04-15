%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Au Privave - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Au Privave - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Au Privave - Ly - F Standard"}

%}
