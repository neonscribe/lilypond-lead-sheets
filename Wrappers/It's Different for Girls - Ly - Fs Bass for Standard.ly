%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = fs,,
whatClef = "bass"

\include "../Core/It's Different for Girls - Ly Core - Fs.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It's Different for Girls - F\# Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/It's Different for Girls - Ly - Fs Bass for Standard"}

%}
