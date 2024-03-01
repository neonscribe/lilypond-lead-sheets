%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Serenade to a Cuckoo - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Serenade to a Cuckoo - A♭ to B♭}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Serenade to a Cuckoo - Ly - Ab to Bb for Bb for Standard"}

%}
