%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = bf
bassKey = bf
whatClef = "treble"

\include "../Core/Naima - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Naima - Ab to Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Naima - Ly - Ab to Bb for Bb for Standard"}

%}
