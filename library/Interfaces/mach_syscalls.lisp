(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:mach_syscalls.h"
; at Sunday July 2,2006 7:30:23 pm.
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
; #ifndef _MACH_MACH_SYSCALLS_H_
; #define	_MACH_MACH_SYSCALLS_H_

(require-interface "mach/std_types")

(require-interface "mach/kern_return")

(require-interface "mach/port")

(require-interface "mach/message")

(require-interface "mach/clock_types")

(deftrap-inline "_clock_sleep_trap" 
   ((clock_name :mach_port_name_t)
    (sleep_type :signed-long)
    (sleep_sec :signed-long)
    (sleep_nsec :signed-long)
    (wakeup_time (:pointer :mach_timespec_t))
   )
   :signed-long
() )

(deftrap-inline "_thread_switch" 
   ((thread_name :mach_port_name_t)
    (option :signed-long)
    (option_time :UInt32)
   )
   :signed-long
() )

; #endif	/* _MACH_MACH_SYSCALLS_H_ */


(provide-interface "mach_syscalls")