SHEPHERDING ASSISTANT V2.34.13

Based on the working V2.34.12.

FIX:
The previous renderer attempted to sort using firstName/lastName fields that
do not exist on the current publisher records. That left the original array
order in place, which is why family heads appeared first.

This build sorts using the publisher's actual stored/display name:
Last Name, then First Name.

No publisher records, household assignments, family-head flags, or other
data are modified.

Inactive publishers are NOT implemented yet; when added, they will be
separated into a bottom section with an "Inactive Publishers" heading.

Replace ONLY index.html.
