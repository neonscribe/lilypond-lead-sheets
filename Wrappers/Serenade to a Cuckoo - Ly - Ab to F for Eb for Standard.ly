%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Serenade to a Cuckoo - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Serenade to a Cuckoo - A♭ to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Serenade to a Cuckoo - Ly - Ab to F for Eb for Standard"}

%}
