%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/I Found a Million Dollar Baby - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Found a Million Dollar Baby (In a Five and Ten Cent Store) - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I Found a Million Dollar Baby - Ly - F Bass for Standard"}

%}
