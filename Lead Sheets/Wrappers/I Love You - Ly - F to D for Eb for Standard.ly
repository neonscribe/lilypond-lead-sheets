%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/I Love You - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Love You - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I Love You - Ly - F to D for Eb for Standard"}

%}
