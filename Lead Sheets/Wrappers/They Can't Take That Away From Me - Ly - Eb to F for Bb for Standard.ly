%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/They Can't Take That Away From Me - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{They Can't Take That Away From Me - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/They Can't Take That Away From Me - Ly - Eb to F for Bb for Standard"}

%}
