(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:CGLProfiler.h"
; at Sunday July 2,2006 7:27:21 pm.
; 
; 	Copyright:	(c) 2002 by Apple Computer, Inc., all rights reserved.
; 
; #ifndef _CGLPROFILER_H
; #define _CGLPROFILER_H
; #ifdef __cplusplus
#| #|
extern "C" {
#endif
|#
 |#
;  Profiler extensions for CGLContextParameter 
;  Use these parameter names as the argument to CGLSetParameter. 
(defconstant $kCGLCPComment 1232)
; #define kCGLCPComment ((CGLContextParameter)1232)
;  param is a pointer to a NULL-terminated C-style string. 
;  Inserts a context-specific comment into the function trace stream. 
;  Availability: set only, get is ignored. 
(defconstant $kCGLCPDumpState 1233)
; #define kCGLCPDumpState ((CGLContextParameter)1233)
;  param ignored.  Dumps all the gl state. 
;  Availability: set only, get is ignored. 
(defconstant $kCGLCPEnableForceFlush 1234)
; #define kCGLCPEnableForceFlush ((CGLContextParameter)1234)
;  param is GL_TRUE to enable "force flush" mode or GL_FALSE to disable. 
;  Availability: set and get. 
;  Profiler extensions for CGLGlobalOption 
;  Use these as the parameter name for CGLSetOption to control global profiling
; ** features from within your application.  Using CGLSetOption()
; ** overrides the settings you have in OpenGL Profiler.  Example:
; **    CGLSetOption(kCGLGOEnableFunctionTrace, GL_TRUE);
; **    CGLSetOption(kCGLGOComment, "Start call trace");
; 
(defconstant $kCGLGOComment 1506)
; #define kCGLGOComment ((CGLGlobalOption)1506)
;  param is a pointer to a NULL-terminated C-style string. 
;  Inserts a comment in the trace steam that applies to all contexts. 
;  Availability: set only, get is ignored. 
(defconstant $kCGLGOEnableFunctionTrace 1507)
; #define kCGLGOEnableFunctionTrace ((CGLGlobalOption)1507)
;  param is GL_TRUE or GL_FALSE 
;  Turns GL function call tracing on and off 
;  Availability: set and get 
(defconstant $kCGLGOEnableFunctionStatistics 1508)
; #define kCGLGOEnableFunctionStatistics ((CGLGlobalOption)1508)
;  param is GL_TRUE or GL_FALSE 
;  Turns GL function counter on and off 
;  Availability: set and get 
(defconstant $kCGLGOResetFunctionTrace 1509)
; #define kCGLGOResetFunctionTrace ((CGLGlobalOption)1509)
;  param is ignored 
;  Erases current function trace and starts a new one 
;  Availability: set only, get is ignored. 
(defconstant $kCGLGOPageBreak 1510)
; #define kCGLGOPageBreak ((CGLGlobalOption)1510)
;  param is ignored 
;  Inserts a page break into the function trace 
;  Availability: set only, get is ignored. 
(defconstant $kCGLGOResetFunctionStatistics 1511)
; #define kCGLGOResetFunctionStatistics ((CGLGlobalOption)1511)
;  param is ignored 
;  Erases current function statistics, resets all counters to 0 and starts a new set 
;  Availability: set only, get is ignored. 
(defconstant $kCGLGOEnableDebugAttach 1512)
; #define kCGLGOEnableDebugAttach ((CGLGlobalOption)1512)
;  param is GL_TRUE or GL_FALSE 
;  Turns proflier attach feature on and off.  Off by default, you can
; 	   override this with the environment variable GL_ENABLE_DEBUG_ATTACH 
;  Availability: set only, get is ignored. 
;  Hardware accelerator controls
; **
; ** Use these as the parameter name for CGLSetOption to control hardware
; ** accelerator debugging features from within your application.
; **
; ** Sets debugging feature of hardware accelerator.  Unless otherwise noted, a
; ** non-0 param means turn the feature on, while a 0 param means turn it off.
; **
; ** Availability: set and get
; 
;  Rendering Options 
(defconstant $kCGLGOForceSlowRenderingPath 1609)
; #define kCGLGOForceSlowRenderingPath         ((CGLGlobalOption)1609)
(defconstant $kCGLGODisableImmediateRenderPath 1610)
; #define kCGLGODisableImmediateRenderPath     ((CGLGlobalOption)1610)
(defconstant $kCGLGODisableCVARenderPath 1611)
; #define kCGLGODisableCVARenderPath           ((CGLGlobalOption)1611)
(defconstant $kCGLGODisableVARRenderPath 1612)
; #define kCGLGODisableVARRenderPath           ((CGLGlobalOption)1612)
(defconstant $kCGLGOForceWireframeRendering 1613)
; #define kCGLGOForceWireframeRendering        ((CGLGlobalOption)1613)
(defconstant $kCGLGOSubmitOnImmediateRenderCommand 1614)
; #define kCGLGOSubmitOnImmediateRenderCommand ((CGLGlobalOption)1614)
(defconstant $kCGLGOSubmitOnCVARenderCommand 1615)
; #define kCGLGOSubmitOnCVARenderCommand       ((CGLGlobalOption)1615)
(defconstant $kCGLGOSubmitOnVAORenderCommand 1616)
; #define kCGLGOSubmitOnVAORenderCommand       ((CGLGlobalOption)1616)
(defconstant $kCGLGOSubmitOnClearCommand 1617)
; #define kCGLGOSubmitOnClearCommand           ((CGLGlobalOption)1617)
;  HW Transform & Lighting Engine Options 
(defconstant $kCGLGOForceSoftwareTransformLighting 1618)
; #define kCGLGOForceSoftwareTransformLighting ((CGLGlobalOption)1618)
(defconstant $kCGLGOForceSoftwareTexgen 1619)
; #define kCGLGOForceSoftwareTexgen            ((CGLGlobalOption)1619)
(defconstant $kCGLGOForceSoftwareTRUFORM_ATI 1620)
; #define kCGLGOForceSoftwareTRUFORM_ATI       ((CGLGlobalOption)1620)
;  Vertex & Fragment Shader Options 
(defconstant $kCGLGOForceSoftwareVertexShaders 1621)
; #define kCGLGOForceSoftwareVertexShaders     ((CGLGlobalOption)1621)
(defconstant $kCGLGODisableFragmentShaders_ATI 1622)
; #define kCGLGODisableFragmentShaders_ATI     ((CGLGlobalOption)1622)
;  Texturing Options 
(defconstant $kCGLGODisableTexturing 1623)
; #define kCGLGODisableTexturing               ((CGLGlobalOption)1623)
(defconstant $kCGLGOOutlineTexture 1624)
; #define kCGLGOOutlineTexture                 ((CGLGlobalOption)1624)
(defconstant $kCGLGOOutlineTextureColor 1625)
; #define kCGLGOOutlineTextureColor            ((CGLGlobalOption)1625)
;  glBitmap Options 
(defconstant $kCGLGOForceSlowBitmapPath 1626)
; #define kCGLGOForceSlowBitmapPath            ((CGLGlobalOption)1626)
(defconstant $kCGLGODisableBitmap 1627)
; #define kCGLGODisableBitmap                  ((CGLGlobalOption)1627)
;  glReadPixels Options 
(defconstant $kCGLGOForceSlowReadPixelsPath 1630)
; #define kCGLGOForceSlowReadPixelsPath        ((CGLGlobalOption)1630)
(defconstant $kCGLGODisableReadPixels 1631)
; #define kCGLGODisableReadPixels              ((CGLGlobalOption)1631)
(defconstant $kCGLGOOutlineReadPixelsBuffer 1632)
; #define kCGLGOOutlineReadPixelsBuffer        ((CGLGlobalOption)1632)
(defconstant $kCGLGOOutlineReadPixelsBufferColor 1633)
; #define kCGLGOOutlineReadPixelsBufferColor   ((CGLGlobalOption)1633)
;  glDrawPixels Options 
(defconstant $kCGLGOForceSlowDrawPixelsPath 1634)
; #define kCGLGOForceSlowDrawPixelsPath        ((CGLGlobalOption)1634)
(defconstant $kCGLGODisableDrawPixels 1635)
; #define kCGLGODisableDrawPixels              ((CGLGlobalOption)1635)
(defconstant $kCGLGOOutlineDrawPixelsBuffer 1636)
; #define kCGLGOOutlineDrawPixelsBuffer        ((CGLGlobalOption)1636)
(defconstant $kCGLGOOutlineDrawPixelsBufferColor 1637)
; #define kCGLGOOutlineDrawPixelsBufferColor   ((CGLGlobalOption)1637)
;  glCopyPixels Options 
(defconstant $kCGLGOForceSlowCopyPixelsPath 1638)
; #define kCGLGOForceSlowCopyPixelsPath        ((CGLGlobalOption)1638)
(defconstant $kCGLGODisableCopyPixels 1639)
; #define kCGLGODisableCopyPixels              ((CGLGlobalOption)1639)
(defconstant $kCGLGOOutlineCopyPixelsBuffer 1640)
; #define kCGLGOOutlineCopyPixelsBuffer        ((CGLGlobalOption)1640)
(defconstant $kCGLGOOutlineCopyPixelsBufferColor 1641)
; #define kCGLGOOutlineCopyPixelsBufferColor   ((CGLGlobalOption)1641)
;  GL Object & State Management Options 
(defconstant $kCGLGOMakeAllGLObjectsRequireUpdate 1642)
; #define kCGLGOMakeAllGLObjectsRequireUpdate  ((CGLGlobalOption)1642)
(defconstant $kCGLGOMakeAllGLStateRequireUpdate 1643)
; #define kCGLGOMakeAllGLStateRequireUpdate    ((CGLGlobalOption)1643)
; #ifdef __cplusplus
#| #|
}
#endif
|#
 |#

; #endif /* _CGLPROFILER_H */


(provide-interface "CGLProfiler")