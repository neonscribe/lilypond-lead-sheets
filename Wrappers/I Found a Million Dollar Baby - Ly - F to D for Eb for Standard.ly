%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/I Found a Million Dollar Baby - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Found a Million Dollar Baby (In a Five and Ten Cent Store) - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I Found a Million Dollar Baby - Ly - F to D for Eb for Standard"}

%}
