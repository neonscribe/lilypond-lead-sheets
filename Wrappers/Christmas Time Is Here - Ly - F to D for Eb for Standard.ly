%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Christmas Time Is Here - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Christmas Time Is Here - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Christmas Time Is Here - Ly - F to D for Eb for Standard"}

%}
