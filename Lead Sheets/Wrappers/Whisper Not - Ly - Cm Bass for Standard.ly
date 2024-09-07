%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Whisper Not - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Whisper Not - Cm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Whisper Not - Ly - Cm Bass for Standard"}

%}
