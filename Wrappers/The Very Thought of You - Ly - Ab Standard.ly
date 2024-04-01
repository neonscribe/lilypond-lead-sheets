%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = af
whatClef = "treble"

\include "../Core/The Very Thought of You - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Very Thought of You - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The Very Thought of You - Ly - Ab Standard"}

%}
