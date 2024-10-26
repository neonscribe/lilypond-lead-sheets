%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/I Get a Kick Out of You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Get a Kick Out of You - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I Get a Kick Out of You - Ly - Eb to F for Bb for Standard"}

%}
