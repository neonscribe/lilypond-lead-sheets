%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/If I Could Be With You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{If I Could Be With You - Eb to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/If I Could Be With You - Ly - Eb to F for Bb for Standard"}

%}
