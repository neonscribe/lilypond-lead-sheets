%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = f'
whatClef = "treble"
Title = "Spring Is Here"
TempoName = "Medium"
TempoBPM = 140

\include "../Core/Spring Is Here - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Spring Is Here - Ab to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Spring Is Here - Ly - Ab to F for Eb for Standard"}

%}
