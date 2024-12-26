%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Lullaby in Rhythm - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lullaby in Rhythm - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Lullaby in Rhythm - Ly - Eb Bass for Standard"}

%}
