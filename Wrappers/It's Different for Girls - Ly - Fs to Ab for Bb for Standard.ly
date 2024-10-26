%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = af
whatClef = "treble"

\include "../Core/It's Different for Girls - Ly Core - Fs.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It's Different for Girls - F\# to Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/It's Different for Girls - Ly - Fs to Ab for Bb for Standard"}

%}
