SHEPHERDING ASSISTANT V2.34.14

Based directly on the known-good V2.34.11.

IMPORTANT FIX:
V2.34.12/13 accidentally damaged the renderPublishers() function, which
caused the Publishers page to render blank even though the publisher data
remained intact.

V2.34.14 restores the COMPLETE known-good publisher renderer and changes
ONLY the sort:
- All publishers are sorted by actual stored/display name: Last Name,
  then First Name.
- Family Head status is only a badge; it does not affect sorting.
- Household/family data is untouched.
- Status dots, clickable names, and History remain.
- Inactive publishers are NOT implemented yet. When added, they will be
  placed in a separate section at the bottom with an "Inactive Publishers"
  heading.

Replace ONLY index.html.
