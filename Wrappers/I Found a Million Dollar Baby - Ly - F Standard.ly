%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/I Found a Million Dollar Baby - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Found a Million Dollar Baby (In a Five and Ten Cent Store) - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I Found a Million Dollar Baby - Ly - F Standard"}

%}
