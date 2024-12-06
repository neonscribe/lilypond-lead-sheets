%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = af
whatClef = "treble"
Title = "Spring Is Here"
TempoName = "Medium"
TempoBPM = 140

\include "../Core/Spring Is Here - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Spring Is Here - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Spring Is Here - Ly - Ab Standard"}

%}
