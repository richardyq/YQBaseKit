//
//  NSObject+YQRootExt.h
//  Pods
//
//  Created by 殷全 on 2020/2/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (YQRootExt)

+ (id<UIApplicationDelegate>) rootApp;

+ (UIWindow*) rootWindow;

+ (UIViewController*) topMostController;
@end

NS_ASSUME_NONNULL_END
