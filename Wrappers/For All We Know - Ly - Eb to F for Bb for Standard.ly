%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/For All We Know - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{For All We Know - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/For All We Know - Ly - Eb to F for Bb for Standard"}

%}
