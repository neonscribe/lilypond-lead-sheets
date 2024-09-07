%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = af,
whatClef = "bass"

\include "../Core/The Very Thought of You - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Very Thought of You - Ab Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The Very Thought of You - Ly - Ab Bass for Standard"}

%}
