%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/One Note Samba - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{One Note Samba - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/One Note Samba - Ly - Bb Bass for Standard"}

%}
