%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
bassKey = f
whatClef = "bass"

\include "../Core/Django - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Django - Fm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Django - Ly - Fm Bass for Standard"}

%}
