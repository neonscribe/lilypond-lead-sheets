%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = fs
whatClef = "treble"

\include "../Core/It's Different for Girls - Ly Core - Fs.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It's Different for Girls - F\#}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/It's Different for Girls - Ly - Fs Standard"}

%}
