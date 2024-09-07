%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = fs
bassKey = fs'
whatClef = "treble"

\include "../Core/Troublant Bolero - Ly Core - E.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Troublant Bolero - E to F♯}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Troublant Bolero - Ly - E to Fs for Bb for Standard"}

%}
