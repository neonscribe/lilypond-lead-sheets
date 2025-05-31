%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/It's You or No One - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It's You or No One - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/It's You or No One - Ly - Eb to F for Bb for Standard"}

%}
