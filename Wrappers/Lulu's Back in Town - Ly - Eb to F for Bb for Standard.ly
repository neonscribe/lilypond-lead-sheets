%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Lulu's Back in Town - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lulu's Back in Town - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Lulu's Back in Town - Ly - Eb to F for Bb for Standard"}

%}
