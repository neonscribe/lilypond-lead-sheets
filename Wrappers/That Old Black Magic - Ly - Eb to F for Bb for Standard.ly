%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/That Old Black Magic - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{That Old Black Magic - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/That Old Black Magic - Ly - Eb to F for Bb for Standard"}

%}
