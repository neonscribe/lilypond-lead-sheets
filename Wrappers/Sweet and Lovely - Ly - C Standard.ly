%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Sweet and Lovely - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sweet and Lovely - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Sweet and Lovely - Ly - C Standard"}

%}
