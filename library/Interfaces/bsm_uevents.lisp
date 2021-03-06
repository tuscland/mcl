(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:bsm_uevents.h"
; at Sunday July 2,2006 7:27:14 pm.
; 
;  * Copyright (c) 2003 Apple Computer, Inc. All rights reserved.
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
; #ifndef _BSM_UEVENTS_H_
; #define _BSM_UEVENTS_H_
; 
;  * User level audit event numbers
;  *
;  * Range of audit event numbers:
;  * 0			Reserved, invalid
;  * 1     - 2047		Reserved for kernel events
;  * 2048  - 32767	Defined by BSM for user events
;  * 32768 - 36864	Reserved for Mac OS-X applications
;  * 36865 - 65535	Reserved for applications
;  *
;  
(defconstant $AUE_at_create 6144)
; #define AUE_at_create		6144
(defconstant $AUE_at_delete 6145)
; #define AUE_at_delete		6145
(defconstant $AUE_at_perm 6146)
; #define AUE_at_perm		6146
(defconstant $AUE_cron_invoke 6147)
; #define AUE_cron_invoke		6147
(defconstant $AUE_crontab_create 6148)
; #define AUE_crontab_create	6148
(defconstant $AUE_crontab_delete 6149)
; #define AUE_crontab_delete	6149
(defconstant $AUE_crontab_perm 6150)
; #define AUE_crontab_perm	6150
(defconstant $AUE_inetd_connect 6151)
; #define AUE_inetd_connect	6151
(defconstant $AUE_login 6152)
; #define AUE_login		6152
(defconstant $AUE_logout 6153)
; #define AUE_logout		6153
(defconstant $AUE_telnet 6154)
; #define AUE_telnet		6154
(defconstant $AUE_rlogin 6155)
; #define AUE_rlogin		6155
(defconstant $AUE_mountd_mount 6156)
; #define AUE_mountd_mount	6156
(defconstant $AUE_mountd_umount 6157)
; #define AUE_mountd_umount	6157
(defconstant $AUE_rshd 6158)
; #define AUE_rshd		6158
(defconstant $AUE_su 6159)
; #define AUE_su			6159
(defconstant $AUE_halt 6160)
; #define AUE_halt		6160
(defconstant $AUE_reboot 6161)
; #define AUE_reboot		6161
(defconstant $AUE_rexecd 6162)
; #define AUE_rexecd		6162
(defconstant $AUE_passwd 6163)
; #define AUE_passwd		6163
(defconstant $AUE_rexd 6164)
; #define AUE_rexd		6164
(defconstant $AUE_ftpd 6165)
; #define AUE_ftpd		6165
(defconstant $AUE_init 6166)
; #define AUE_init		6166
(defconstant $AUE_uadmin 6167)
; #define AUE_uadmin		6167
(defconstant $AUE_shutdown 6168)
; #define AUE_shutdown		6168
(defconstant $AUE_poweroff 6169)
; #define AUE_poweroff		6169
(defconstant $AUE_crontab_mod 6170)
; #define AUE_crontab_mod		6170
(defconstant $AUE_allocate_succ 6200)
; #define AUE_allocate_succ	6200
(defconstant $AUE_allocate_fail 6201)
; #define AUE_allocate_fail	6201
(defconstant $AUE_deallocate_succ 6202)
; #define AUE_deallocate_succ	6202
(defconstant $AUE_deallocate_fail 6203)
; #define AUE_deallocate_fail	6203
(defconstant $AUE_listdevice_succ 6205)
; #define AUE_listdevice_succ	6205
(defconstant $AUE_listdevice_fail 6206)
; #define AUE_listdevice_fail	6206
(defconstant $AUE_create_user 6207)
; #define AUE_create_user		6207
(defconstant $AUE_modify_user 6208)
; #define AUE_modify_user		6208
(defconstant $AUE_delete_user 6209)
; #define AUE_delete_user		6209
(defconstant $AUE_disable_user 6210)
; #define AUE_disable_user	6210
(defconstant $AUE_enable_user 6211)
; #define AUE_enable_user		6211

; #endif /* !_BSM_UEVENTS_H_ */


(provide-interface "bsm_uevents")