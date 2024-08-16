%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/If You Could See Me Now - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{If You Could See Me Now - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/If You Could See Me Now - Ly - Eb to F for Bb for Standard"}

%}
