SmartGit 21.2.0 (2021-11-18) 123
============================
Fixed Bugs
----------
- Changes view: hitting Refresh did not reload file content
- macOS: the (file) completion popup might be too narrow

Other Noteworthy Changes
------------------------
- macOS: use icon which better matches others on macOS 11/12


SmartGit 21.2 RC 3 (2026-11-15)
===============================
Fixed Bugs
----------
- Changes View, Unified: possible internal errors (on scrollTo and/or Apply) if the last line has been cleared

Other Noteworthy Changes
------------------------
- change default for low-level property dnd.autoScroll.initialDelay to 500(ms) to avoid immediate scrolling for dnd operations near the edge of the Graph
- update SWT
    - Linux: fix native memeory leak
    - MacOS 11 (M1): tables and trees had large borders
- use https for autoupdate
- tag-grouping detection should detect groups only after the last '/' and skip tag-grouping in case of multiple groups


SmartGit 21.2 RC 2 (2021-10-29)
===============================
Improvements
------------
- support for macOS 12

Other Noteworthy Changes
------------------------
- all changes from SmartGit 21.1.3


SmartGit 21.2 RC 1 (2021-10-21)
===============================
Improvements
------------
- Azure DevOps: allow multiple configuration for different server URLs

Fixed Bugs
----------
- Changes view: Apply must not be available when starting within an inner-line change
- Journal: possible false-positive pushed commits for local, untracked branches
- Tag Grouping: configuration auto-detection may give too short (and generic) prefixes
- Linux: Possible NoSuchMethodError running older GTK with old SWT bundle
- macOS: SG-14850: ksdiff (Kaleidoscope.app) might hang until SmartGit is exited

Other Noteworthy Changes
------------------------
- all changes from SmartGit 21.1.2


SmartGit 21.2 preview 2 (2021-09-30)
====================================
New Features, Improvements
--------------------------
- Windows 10: support system SSH (C:\Windows\System32\OpenSSH\ssh.exe) for 'Git for Windows' installations with option "Use external OpenSSH" selected

Fixed Bugs
----------
- Azure DevOps: possible "Could not parse date" error on pull request refresh
- Branches view:
    - refresh may change selection from remote to local tracking branch
    - tag message did not show up for grouped tags
    - toggling remote ref might select local ref
- Changes view:
    - if saving fails, error banner hides too quickly
    - horizontal scrolling did not always update reliably
    - possible assertion on Apply
    - staging hunks for untracked-missing renamed file fails with "Failed to write file" error
    - Working Tree window: did not reliably refresh after failed save
- Ignore: showed scary warning about discarding changes for untracked file
- Log:
    - Files: ignored, removed file which is locally existing did not show up
    - Refresh (Working Tree): automatic refresh did not clean up files after ignoring directory in non-root .gitignore
- Refresh: possible internal error for commits with commit times > 2038

Other Noteworthy Changes
------------------------
- UTF8 detection now scans full file instead of just the first 64kB
- low-level property "core.tree.filter.backwardCompatibilityWithNonUnicodeGitOnWindows"
- Table controls: if low-level property table.scrollToSelection is set to false, ignore the selection's visibility


SmartGit 21.2 preview 1 (2021-08-09)
====================================
Other Noteworthy Changes
------------------------
- Linux: SWT support for aarch64 (ARM64)
- macOS 11: separate bundles for x86_64 and aarch64 (ARM64/M1)
- Windows: use Windows root trust store for SSL connections
- Pull, Commit, ... dialogs: use checkbox as expand control
