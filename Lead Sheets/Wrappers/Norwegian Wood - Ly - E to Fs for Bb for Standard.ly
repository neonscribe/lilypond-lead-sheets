%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = fs
whatClef = "treble"

\include "../Core/Norwegian Wood - Ly Core - E.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Norwegian Wood - E to F♯}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Norwegian Wood - Ly - E to Fs for Bb for Standard"}

%}
