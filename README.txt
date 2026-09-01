SHEPHERDING ASSISTANT V2.34.20

Based directly on working V2.34.19.

BACKUP / IMPORT IMPROVEMENT:
- Existing Export Group Data and Import Group Data remain.
- Added "Save / Share Backup".
- On supported mobile browsers, this uses the device's native share/save
  mechanism, allowing destinations such as Files, OneDrive, iCloud Drive,
  Google Drive, Dropbox, Messages, Mail, etc., when available.
- On supported desktop browsers, the native Save File picker can let the user
  choose a local OneDrive folder or another accessible location.
- If those browser capabilities are unavailable, the normal JSON download
  remains as a fallback.
- Import still uses the standard file picker, which can select files from
  OneDrive, iCloud Drive, Google Drive, Dropbox, local storage, and other
  locations exposed by the operating system/browser.

No database structure or group data is changed.

Replace ONLY index.html.
