%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/When I Fall in Love - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When I Fall in Love - E♭ to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/When I Fall in Love - Ly - Eb to F for Bb for Standard"}

%}
