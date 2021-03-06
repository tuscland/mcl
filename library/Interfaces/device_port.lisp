(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:device_port.h"
; at Sunday July 2,2006 7:27:30 pm.
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
; 
;  *	Author: David B. Golub, Carnegie Mellon University
;  *	Date: 	8/89
;  
; #ifndef	_DEVICE_DEVICE_PORT_H_
; #define	_DEVICE_DEVICE_PORT_H_

(require-interface "device/device_types")
; 
;  *	Master privileged I/O object for this host
;  
(def-mactype :master_device_port (find-mactype ':mach_port_t))
(defconstant $DEVICE_PAGER_GUARDED 1)
; #define DEVICE_PAGER_GUARDED		0x1
(defconstant $DEVICE_PAGER_COHERENT 2)
; #define DEVICE_PAGER_COHERENT		0x2
(defconstant $DEVICE_PAGER_CACHE_INHIB 4)
; #define DEVICE_PAGER_CACHE_INHIB	0x4
(defconstant $DEVICE_PAGER_WRITE_THROUGH 8)
; #define DEVICE_PAGER_WRITE_THROUGH	0x8
(defconstant $DEVICE_PAGER_CONTIGUOUS 256)
; #define DEVICE_PAGER_CONTIGUOUS		0x100
(defconstant $DEVICE_PAGER_NOPHYSCACHE 512)
; #define DEVICE_PAGER_NOPHYSCACHE	0x200

; #endif	/* _DEVICE_DEVICE_PORT_H_ */


(provide-interface "device_port")