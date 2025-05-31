%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = af
whatClef = "treble"

\include "../Core/Straighten Up and Fly Right - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Straighten Up and Fly Right - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Straighten Up and Fly Right - Ly - Ab Standard"}

%}
