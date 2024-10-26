%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/It's Different for Girls - Ly Core - Fs.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It's Different for Girls - F\# to Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/It's Different for Girls - Ly - Fs to Eb for Eb for Standard"}

%}
