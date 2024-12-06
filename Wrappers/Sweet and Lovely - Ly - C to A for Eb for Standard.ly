%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Sweet and Lovely - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sweet and Lovely - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Sweet and Lovely - Ly - C to A for Eb for Standard"}

%}
