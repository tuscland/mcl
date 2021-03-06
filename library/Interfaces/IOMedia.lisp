(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:IOMedia.h"
; at Sunday July 2,2006 7:29:30 pm.
; 
;  * Copyright (c) 1998-2003 Apple Computer, Inc. All rights reserved.
;  *
;  * @APPLE_LICENSE_HEADER_START@
;  * 
;  * This file contains Original Code and/or Modifications of Original Code
;  * as defined in and that are subject to the Apple Public Source License
;  * Version 2.0 (the 'License'). You may not use this file except in
;  * compliance with the License. Please obtain a copy of the License at
;  * http://www.opensource.apple.com/apsl/ and read it before using this
;  * file.
;  * 
;  * The Original Code and all software distributed under the License are
;  * distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER
;  * EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,
;  * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,
;  * FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR NON-INFRINGEMENT.
;  * Please see the License for the specific language governing rights and
;  * limitations under the License.
;  * 
;  * @APPLE_LICENSE_HEADER_END@
;  
; !
;  * @header IOMedia
;  * @abstract
;  * This header contains the IOMedia class definition.
;  
; #ifndef _IOMEDIA_H
; #define _IOMEDIA_H

(require-interface "IOKit/IOTypes")
; !
;  * @defined kIOMediaClass
;  * @abstract
;  * The name of the IOMedia class.
;  
(defconstant $kIOMediaClass "IOMedia")
; #define kIOMediaClass "IOMedia"
; !
;  * @defined kIOMediaContentKey
;  * @abstract
;  * A property of IOMedia objects.
;  * @discussion
;  * The kIOMediaContentKey property has an OSString
;  * value and contains a description of the media's
;  * contents.  The description is the same as the hint at the time of the
;  * object's creation, but it is possible that the description has been overridden
;  * by a client (which has probed the media and identified the content correctly)
;  * of the media object.  It is more accurate than the hint for this reason.  The
;  * string is formed in the likeness of Apple's "Apple_HFS" strings.
;  
(defconstant $kIOMediaContentKey "Content")
; #define kIOMediaContentKey "Content"
; !
;  * @defined kIOMediaContentHintKey
;  * @abstract
;  * A property of IOMedia objects.
;  * @discussion
;  * The kIOMediaContentHintKey property has an OSString
;  * value and contains a hint of the media's contents.
;  * The hint is set at the time of the object's creation, should the creator have
;  * a clue as to what it may contain.  The hint string does not change for the
;  * lifetime of the object and is formed in the likeness of Apple's "Apple_HFS"
;  * strings.
;  
(defconstant $kIOMediaContentHintKey "Content Hint")
; #define kIOMediaContentHintKey "Content Hint"
; !
;  * @defined kIOMediaEjectableKey
;  * @abstract
;  * A property of IOMedia objects.
;  * @discussion
;  * The kIOMediaEjectableKey property has an OSBoolean
;  * value and describes whether the media is ejectable
;  * from the drive mechanism under software control.  Implies IOMediaRemovable
;  * is also true.
;  
(defconstant $kIOMediaEjectableKey "Ejectable")
; #define kIOMediaEjectableKey "Ejectable"
; !
;  * @defined kIOMediaLeafKey
;  * @abstract
;  * A property of IOMedia objects.
;  * @discussion
;  * The kIOMediaLeafKey property has an OSBoolean value and describes whether the media is a leaf, that is,
;  * it is the deepest media object in this branch of the I/O Registry.
;  
(defconstant $kIOMediaLeafKey "Leaf")
; #define kIOMediaLeafKey "Leaf"
; !
;  * @defined kIOMediaPreferredBlockSizeKey
;  * @abstract
;  * A property of IOMedia objects.
;  * @discussion
;  * The kIOMediaPreferredBlockSizeKey property has an
;  * OSNumber value and describes the media's natural
;  * block size in bytes.  This information is useful to clients that want to
;  * optimize access to the media.
;  
(defconstant $kIOMediaPreferredBlockSizeKey "Preferred Block Size")
; #define kIOMediaPreferredBlockSizeKey "Preferred Block Size"
; !
;  * @defined kIOMediaRemovableKey
;  * @abstract
;  * A property of IOMedia objects.
;  * @discussion
;  * The kIOMediaRemovableKey property has an OSBoolean
;  * value and describes whether the media is removable
;  * from the drive mechanism.
;  
(defconstant $kIOMediaRemovableKey "Removable")
; #define kIOMediaRemovableKey "Removable"
; !
;  * @defined kIOMediaSizeKey
;  * @abstract
;  * A property of IOMedia objects.
;  * @discussion
;  * The kIOMediaSizeKey property has an OSNumber value and describes the total length of the media in
;  * bytes.
;  
(defconstant $kIOMediaSizeKey "Size")
; #define kIOMediaSizeKey "Size"
; !
;  * @defined kIOMediaWholeKey
;  * @abstract
;  * A property of IOMedia objects.
;  * @discussion
;  * The kIOMediaWholeKey property has an OSBoolean
;  * value and describes whether the media is whole, that is,
;  * it represents the whole disk (the physical disk, or a virtual replica
;  * thereof).
;  
(defconstant $kIOMediaWholeKey "Whole")
; #define kIOMediaWholeKey "Whole"
; !
;  * @defined kIOMediaWritableKey
;  * @abstract
;  * A property of IOMedia objects.
;  * @discussion
;  * The kIOMediaWritableKey property has an OSBoolean
;  * value and describes whether the media is writable.
;  
(defconstant $kIOMediaWritableKey "Writable")
; #define kIOMediaWritableKey "Writable"
; !
;  * @defined kIOMediaContentMaskKey
;  * @abstract
;  * A property of IOMedia clients.
;  * @discussion
;  * The kIOMediaContentMaskKey property has an OSString
;  * value and must exist in all IOMedia clients that
;  * drive new content (that is, produce new media objects).  When the client
;  * matches against the provider media, the value of the client's
;  * kIOMediaContentMaskKey property is used to replace the provider's
;  * kIOMediaContentKey property.
;  
(defconstant $kIOMediaContentMaskKey "Content Mask")
; #define kIOMediaContentMaskKey "Content Mask"
; !
;  * @defined kIOMediaIconKey
;  * @abstract
;  * A property of any object in the media stack.
;  * @discussion
;  * kIOMediaIconKey is a property of any object in the media stack that wishes
;  * to override the default icon shown for the media objects in the stack.  It
;  * is usually defined in a provider object below the media object.  It has an
;  * OSDictionary value, with properties identical to the kIOIconKey definition,
;  * that is, kCFBundleIdentifierKey and kIOBundleResourceFileKey.
;  
(defconstant $kIOMediaIconKey "IOMediaIcon")
; #define kIOMediaIconKey "IOMediaIcon"
; !
;  * @enum IOMediaAttributeMask
;  * @discussion
;  * The IOMediaAttributeMask bit mask describes various attributes of
;  * the media object, such as its ejectability and its removability.
;  * @constant kIOMediaAttributeEjectableMask
;  * Indicates whether the media is ejectable from the drive mechanism
;  * under software control.  Implies kIOMediaAttributeRemovableMask.
;  * @constant kIOMediaAttributeRemovableMask
;  * Indicates whether the media is removable from the drive mechanism.
;  

(def-mactype :IOMediaAttributeMask (find-mactype ':UInt32))
(defconstant $kIOMediaAttributeEjectableMask 1)
; #define kIOMediaAttributeEjectableMask 0x00000001UL
(defconstant $kIOMediaAttributeRemovableMask 2)
; #define kIOMediaAttributeRemovableMask 0x00000002UL
(defconstant $kIOMediaAttributeReservedMask 4294967292)
; #define kIOMediaAttributeReservedMask  0xFFFFFFFCUL

; #endif /* !_IOMEDIA_H */


(provide-interface "IOMedia")