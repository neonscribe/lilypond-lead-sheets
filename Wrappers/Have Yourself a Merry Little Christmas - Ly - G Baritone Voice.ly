%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Frank Sinatra, Ella Fitzgerald, Barbra Streisand Key"
whatKey = g
whatClef = "treble_8"

\include "../Core/Have Yourself a Merry Little Christmas - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Have Yourself a Merry Little Christmas - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/Have Yourself a Merry Little Christmas - Ly - G Baritone Voice"}

%}
