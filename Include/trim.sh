# Source - https://stackoverflow.com/a/5130044
# Posted by deepwell, modified by community. See post 'Timeline' for change history
# Retrieved 2026-05-21, License - CC BY-SA 4.0

(export LANG=C LC_CTYPE=C
find . -type d \( -name .svn -o -name .git \) -prune -o -type f -print0 | perl -0ne 'print if -T' | xargs -0 -P $(nproc) sed -Ei 's/[[:blank:]]+$//'
)
