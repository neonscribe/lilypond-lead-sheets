%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/You Do Something to Me - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You Do Something to Me - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/You Do Something to Me - Ly - Eb to F for Bb for Standard"}

%}
