%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/The More I See You - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The More I See You - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/The More I See You - Ly - Eb to F for Bb for Standard"}

%}
