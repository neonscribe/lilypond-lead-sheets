%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Isn't It Romantic - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Isn't It Romantic - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Isn't It Romantic - Ly - Eb to F for Bb for Standard"}

%}
