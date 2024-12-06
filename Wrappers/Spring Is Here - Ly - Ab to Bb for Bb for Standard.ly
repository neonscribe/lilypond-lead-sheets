%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = bf
whatClef = "treble"
Title = "Spring Is Here"
TempoName = "Medium"
TempoBPM = 140

\include "../Core/Spring Is Here - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Spring Is Here - Ab to Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Spring Is Here - Ly - Ab to Bb for Bb for Standard"}

%}
