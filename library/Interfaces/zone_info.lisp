(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:zone_info.h"
; at Sunday July 2,2006 7:26:02 pm.
; 
;  * Copyright (c) 2000 Apple Computer, Inc. All rights reserved.
;  *
;  * @APPLE_LICENSE_HEADER_START@
;  * 
;  * The contents of this file constitute Original Code as defined in and
;  * are subject to the Apple Public Source License Version 1.1 (the
;  * "License").  You may not use this file except in compliance with the
;  * License.  Please obtain a copy of the License at
;  * http://www.apple.com/publicsource and read it before using this file.
;  * 
;  * This Original Code and all software distributed under the License are
;  * distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, EITHER
;  * EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,
;  * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,
;  * FITNESS FOR A PARTICULAR PURPOSE OR NON-INFRINGEMENT.  Please see the
;  * License for the specific language governing rights and limitations
;  * under the License.
;  * 
;  * @APPLE_LICENSE_HEADER_END@
;  
; 
;  * @OSF_COPYRIGHT@
;  
; 
;  * HISTORY
;  * 
;  * Revision 1.1.1.1  1998/09/22 21:05:45  wsanchez
;  * Import of Mac OS X kernel (~semeria)
;  *
;  * Revision 1.1.1.1  1998/03/07 02:26:17  wsanchez
;  * Import of OSF Mach kernel (~mburg)
;  *
;  * Revision 1.2.12.2  1995/01/06  19:52:51  devrcs
;  * 	mk6 CR668 - 1.3b26 merge
;  * 	64bit cleanup
;  * 	[1994/10/14  03:43:40  dwm]
;  *
;  * Revision 1.2.12.1  1994/09/23  02:46:19  ezf
;  * 	change marker to not FREE
;  * 	[1994/09/22  21:44:33  ezf]
;  * 
;  * Revision 1.2.2.2  1993/06/09  02:45:03  gm
;  * 	Added to OSF/1 R1.3 from NMK15.0.
;  * 	[1993/06/02  21:19:19  jeffc]
;  * 
;  * Revision 1.2  1993/04/19  16:41:52  devrcs
;  * 	ansi C conformance changes
;  * 	[1993/02/02  18:57:07  david]
;  * 
;  * Revision 1.1  1992/09/30  02:32:41  robert
;  * 	Initial revision
;  * 
;  * $EndLog$
;  
;  CMU_HIST 
; 
;  * Revision 2.5  91/05/14  17:04:15  mrt
;  * 	Correcting copyright
;  * 
;  * Revision 2.4  91/02/05  17:38:17  mrt
;  * 	Changed to new Mach copyright
;  * 	[91/02/01  17:29:40  mrt]
;  * 
;  * Revision 2.3  90/06/19  23:00:29  rpd
;  * 	Added zi_ prefix to zone_info field names.
;  * 	Added zi_collectable field to zone_info.
;  * 	Added zn_ prefix to zone_name field names.
;  * 	[90/06/05            rpd]
;  * 
;  * Revision 2.2  90/06/02  15:00:54  rpd
;  * 	Created.
;  * 	[90/03/26  23:53:57  rpd]
;  * 
;  * Revision 2.2  89/05/06  12:36:08  rpd
;  * 	Created.
;  * 	[89/05/06  12:35:19  rpd]
;  * 
;  
;  CMU_ENDHIST 
;  
;  * Mach Operating System
;  * Copyright (c) 1991,1990,1989 Carnegie Mellon University
;  * All Rights Reserved.
;  * 
;  * Permission to use, copy, modify and distribute this software and its
;  * documentation is hereby granted, provided that both the copyright
;  * notice and this permission notice appear in all copies of the
;  * software, derivative works or modified versions, and any portions
;  * thereof, and that both notices appear in supporting documentation.
;  * 
;  * CARNEGIE MELLON ALLOWS FREE USE OF THIS SOFTWARE IN ITS "AS IS"
;  * CONDITION.  CARNEGIE MELLON DISCLAIMS ANY LIABILITY OF ANY KIND FOR
;  * ANY DAMAGES WHATSOEVER RESULTING FROM THE USE OF THIS SOFTWARE.
;  * 
;  * Carnegie Mellon requests users of this software to return to
;  * 
;  *  Software Distribution Coordinator  or  Software.Distribution@CS.CMU.EDU
;  *  School of Computer Science
;  *  Carnegie Mellon University
;  *  Pittsburgh PA 15213-3890
;  * 
;  * any improvements or extensions that they make and grant Carnegie Mellon
;  * the rights to redistribute these changes.
;  
; 
;  
; #ifndef	_MACH_DEBUG_ZONE_INFO_H_
; #define _MACH_DEBUG_ZONE_INFO_H_

(require-interface "mach/boolean")

(require-interface "mach/machine/vm_types")
; 
;  *	Remember to update the mig type definitions
;  *	in mach_debug_types.defs when adding/removing fields.
;  
(defconstant $ZONE_NAME_MAX_LEN 80)
; #define ZONE_NAME_MAX_LEN		80
(defrecord zone_name
   (zn_name (:array :character 80))
)
(%define-record :zone_name_t (find-record-descriptor :ZONE_NAME))

(def-mactype :zone_name_array_t (find-mactype '(:pointer :ZONE_NAME)))
(defrecord zone_info
   (zi_count :signed-long)
                                                ;  Number of elements used now 
   (zi_cur_size :UInt32)
                                                ;  current memory utilization 
   (zi_max_size :UInt32)
                                                ;  how large can this zone grow 
   (zi_elem_size :UInt32)
                                                ;  size of an element 
   (zi_alloc_size :UInt32)
                                                ;  size used for more memory 
   (zi_pageable :signed-long)
                                                ;  zone pageable? 
   (zi_sleepable :signed-long)
                                                ;  sleep if empty? 
   (zi_exhaustible :signed-long)
                                                ;  merely return if empty? 
   (zi_collectable :signed-long)
                                                ;  garbage collect elements? 
)
(%define-record :zone_info_t (find-record-descriptor :ZONE_INFO))

(def-mactype :zone_info_array_t (find-mactype '(:pointer :ZONE_INFO)))

; #endif	/* _MACH_DEBUG_ZONE_INFO_H_ */


(provide-interface "zone_info")