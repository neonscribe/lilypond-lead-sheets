%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = f,
whatClef = "treble_8"

objectGenderMale = ##t

\include "../Core/Sweet and Lovely - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sweet and Lovely - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Sweet and Lovely - Ly - F Alto Voice"}

%}
