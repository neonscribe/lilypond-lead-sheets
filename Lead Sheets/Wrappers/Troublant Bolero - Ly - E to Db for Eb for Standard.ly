%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = df
bassKey = df
whatClef = "treble"

\include "../Core/Troublant Bolero - Ly Core - E.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Troublant Bolero - E to Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Troublant Bolero - Ly - E to Db for Eb for Standard"}

%}
