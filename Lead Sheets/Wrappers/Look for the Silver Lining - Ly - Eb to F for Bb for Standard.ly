%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Look for the Silver Lining - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Look for the Silver Lining - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Look for the Silver Lining - Ly - Eb to F for Bb for Standard"}

%}
