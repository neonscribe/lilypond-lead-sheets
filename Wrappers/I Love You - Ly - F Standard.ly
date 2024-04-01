%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/I Love You - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Love You - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I Love You - Ly - F Standard"}

%}
