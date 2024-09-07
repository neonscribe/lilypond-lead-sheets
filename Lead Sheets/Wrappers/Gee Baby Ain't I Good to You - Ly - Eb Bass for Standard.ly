%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Gee Baby Ain't I Good to You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Gee Baby, Ain't I Good to You - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Gee Baby Ain't I Good to You - Ly - Eb Bass for Standard"}

%}
