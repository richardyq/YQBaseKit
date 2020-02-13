#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "NSObject+YQRootExt.h"
#import "NSString+YQBaseExt.h"
#import "YQBaseInc.h"

FOUNDATION_EXPORT double YQBaseKitVersionNumber;
FOUNDATION_EXPORT const unsigned char YQBaseKitVersionString[];

