%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,,
whatClef = "bass"

\include "../Core/If I Could Be With You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{If I Could Be With You - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/If I Could Be With You - Ly - Eb Bass for Standard"}

%}
