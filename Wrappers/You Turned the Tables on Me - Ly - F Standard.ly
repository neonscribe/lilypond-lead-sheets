%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/You Turned the Tables on Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Turned the Tables on Me - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/You Turned the Tables on Me - Ly - F Standard"}

%}
