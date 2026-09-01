SHEPHERDING ASSISTANT V2.34.17

Based directly on V2.34.16.

ADDRESS SAVE FIX:
The publisher edit save routine now explicitly writes the address field to
the publisher object before persistence. The family-head behavior is retained:
a Family Head's saved address is copied to the other members of the same
household. Non-family-head members continue to inherit the Family Head address.

Also made persist() report an actual storage error instead of silently failing.

No publisher data is modified by the build itself.

Replace ONLY index.html.
