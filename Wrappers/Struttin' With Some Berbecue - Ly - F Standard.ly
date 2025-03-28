%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Struttin' With Some Berbecue - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Struttin' With Some Berbecue - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Struttin' With Some Berbecue - Ly - F Standard"}

%}
