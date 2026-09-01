SHEPHERDING ASSISTANT V2.34.16

Based directly on the known-good V2.34.15.

FIX:
Publisher addresses were not being reliably saved in the edit flow.

The save logic is now explicit:
- When editing a Family Head, the address field is saved to that publisher record.
- That saved family-head address is immediately propagated to the other members
  of the same household.
- Non-family-head publishers continue to inherit the family-head address rather
  than maintaining a separate address.
- Existing phone, email, role, household, notes, date, and Family Head behavior
  are untouched.
- Loaded address values are normalized as strings.

No publisher records are modified during the build itself.

Replace ONLY index.html.
