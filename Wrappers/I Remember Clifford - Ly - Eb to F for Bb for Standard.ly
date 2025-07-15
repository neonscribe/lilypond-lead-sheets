%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/I Remember Clifford - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Remember Clifford - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I Remember Clifford - Ly - Eb to F for Bb for Standard"}

%}
