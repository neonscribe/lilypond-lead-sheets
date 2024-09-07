%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = f'
whatClef = "treble"

\include "../Core/The Very Thought of You - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Very Thought of You - Ab to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/The Very Thought of You - Ly - Ab to F for Eb for Standard"}

%}
