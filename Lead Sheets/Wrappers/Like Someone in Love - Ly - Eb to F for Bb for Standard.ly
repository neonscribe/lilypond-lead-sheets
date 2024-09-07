%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Like Someone in Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Like Someone in Love - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Like Someone in Love - Ly - Eb to F for Bb for Standard"}

%}
