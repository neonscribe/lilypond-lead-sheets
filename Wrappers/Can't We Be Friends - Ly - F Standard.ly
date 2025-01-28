%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Can't We Be Friends - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Can't We Be Friends - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Can't We Be Friends - Ly - F Standard"}

%}
