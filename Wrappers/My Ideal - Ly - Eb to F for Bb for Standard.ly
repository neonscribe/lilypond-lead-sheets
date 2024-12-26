%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/My Ideal - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Ideal - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/My Ideal - Ly - Eb to F for Bb for Standard"}

%}
