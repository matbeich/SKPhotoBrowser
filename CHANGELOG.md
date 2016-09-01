# Change Log

## 3.0.x
Released on 2016-8

#### Some Interface is removed, changed this version.
- status bar handling is removed.
- custom button handling interface is chagned.
- custom option goes internal/private. use option via SKPhotoBrowserOptions.

#### Add
- Add changelog

#### Fixed
- prepare for swift3.0. 
- refactoring code for new implement.
- Parent View disappears when dismissed. #120
- Glitch when origin imageview is not correct size #108 
- Problems with the "long" photo #116 

#### Remove
- Statusbar handling. 
- Some public property to internal for improving

## 2.0.x
Released on 2016-8

#### Added
- Migrate UIImage cache category to new SKCache

#### Fixed
- Make cached response data return optional
- Fixed issue when animatedFromView not has a superview but has superlayer
- Fixed when image downloaded then not show activityindicator
- Update for Swift2.3

--- 

## 1.9.x
Released on 2016-6

#### Added
- Delegate to notify when the user scroll to an index
- Single tap to dismiss

#### Fixed
- Fixed a bug where the activity indicator was only visible
- Fixed unit test and problems running when being bridged

---

## 1.8.x
Released on 2016-4

#### Added
- Using SKPhotoProtocol to enable usage from SKLocalPhoto 
- SKLocalPhoto to support local photo from file

#### Fixed
- Bug when animation when tap.
- The indicator may not disappear when loading local image
- Event crash when closing before image has been loaded
- Fix crash on initialisation

---

## 1.7.x
Released on 2016-3

#### Added
- Enable ability to override statusBar style

#### Fixed
- Update for swift2.0
- Bug when zooming small image
- Prevent crash when closing before image has been loaded

---

## 1.6.x
Released on 2016-3

#### Fixed
- Change maxScale to 1.0 it works perfectly.
- Fixed the bug which was after the device rotation

---

## 1.5.x
Released on 2016-3

#### Added
- Delete Button

#### Fixed
- Change maxScale to 1.0 it works perfectly.
- Rew algorithm for maxScale.
- Changed UIActionSheet to UIAlertController with ActionSheet style

---

## 1.4.x
Released on 2016-2

#### Added
- Delegate add for actionbutton.
- DidShowPhotoAtIndex delegate goes to optional. 

#### Fixed
- Zooming bug fixed.

---

## 1.3.x
Released on 2016-1

#### Added
- Added action functionality similar to IDMPhotoBrowser.
- Add extra caption for share

#### Fixed
- Bug fixed for mail crash


--- 

## 1.2.x
Released on 2015-10

#### Added
- SKPhotoProtocol is implemented.

#### Fixed
- Double tap bug fixed

---

## 1.1.x
Released on 2015-10-09.

#### Fixed
- some property make private.
- layout bug fixed when zoom.

## 1.0.0
Released on 2015-10-09.

