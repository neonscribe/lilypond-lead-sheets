%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/The End of a Love Affair - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The End of a Love Affair - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/The End of a Love Affair - Ly - F to G for Bb for Standard"}

%}
