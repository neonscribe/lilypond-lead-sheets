%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/I'm Glad There Is You - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm Glad There Is You - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I'm Glad There Is You - Ly - F Standard"}

%}
