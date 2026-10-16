Shepherding Assistant v2.36.54 TEST — Password Recovery

This is a TEST-ONLY build that adds:
- A "Forgot Password / Send Recovery Email" button.
- A new-password panel shown when Supabase emits PASSWORD_RECOVERY.
- New-password confirmation and save via Supabase auth.updateUser({ password }).

Important:
- This is not the complete granular-permissions/Supabase security migration build.
- Do not replace production main/index.html with this file.
- For recovery links to return to the test site, add the exact test-site URL to Supabase Dashboard > Authentication > URL Configuration > Redirect URLs. Do not change Site URL just for this test.
- Recovery emails already sent may still open the main site. Request a new recovery email from this test build after the redirect URL is allow-listed.
- Existing account and group memberships are not deleted or changed by this code.
