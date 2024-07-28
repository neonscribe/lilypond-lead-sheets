%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/I've Got You Under My Skin - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I've Got You Under My Skin - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/I've Got You Under My Skin - Ly - Eb to F for Bb for Standard"}

%}
