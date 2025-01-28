%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb Low for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Harlem Nocturne - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Harlem Nocturne - Gm to Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Harlem Nocturne - Ly - Gm to Am for Bb Low for Standard"}

%}
