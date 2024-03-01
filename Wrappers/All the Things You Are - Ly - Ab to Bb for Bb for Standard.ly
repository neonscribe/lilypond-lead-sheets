%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = bf
whatVerseKey = a
whatClef = "treble"

\include "../Core/All the Things You Are - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{All the Things You Are - A♭ to B♭}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/All the Things You Are - Ly - Ab to Bb for Bb for Standard"}

%}
