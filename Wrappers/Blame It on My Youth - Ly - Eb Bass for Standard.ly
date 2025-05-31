%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Blame It on My Youth - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blame It on My Youth - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Blame It on My Youth - Ly - Eb Bass for Standard"}

%}
