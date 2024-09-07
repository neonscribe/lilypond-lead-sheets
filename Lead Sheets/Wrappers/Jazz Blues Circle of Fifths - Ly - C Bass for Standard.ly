%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Jazz Blues Circle of Fifths - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jazz Blues Circle of Fifths - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Jazz Blues Circle of Fifths - Ly - C Bass for Standard"}

%}
