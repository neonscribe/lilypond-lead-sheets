%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/I Had the Craziest Dream - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Had the Craziest Dream - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I Had the Craziest Dream - Ly - C to A for Eb for Standard"}

%}
