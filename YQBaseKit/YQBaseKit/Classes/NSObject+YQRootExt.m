//
//  NSObject+YQRootExt.m
//  Pods
//
//  Created by 殷全 on 2020/2/13.
//

#import "NSObject+YQRootExt.h"

@implementation NSObject (YQRootExt)

+ (id<UIApplicationDelegate>) rootApp{
    UIApplication* app = [UIApplication sharedApplication];
    return app.delegate;
}

+ (UIWindow*) rootWindow{
    UIWindow* window = nil;
    if (@available(iOS 13.0, *)) {
        for (UIWindowScene* windowScene in [UIApplication sharedApplication].connectedScenes){
            if (windowScene.activationState == UISceneActivationStateForegroundActive){
                NSArray* windows = windowScene.windows;
                window = windows.firstObject;
                break;
            }
        }
    }
    else{
         window = [UIApplication sharedApplication].keyWindow;
    }
               
    return window;
}

+ (UIViewController*) topMostController{
    UIWindow *keyWindow = [self rootWindow];
    if (!keyWindow) {
        return nil;
    }
    UIViewController *topMostViewController = keyWindow.rootViewController;
    if (!topMostViewController) {
        return nil;
    }
    
    UIViewController* upperViewController = [self upperViewController:topMostViewController];
    while (topMostViewController != upperViewController) {
        topMostViewController = upperViewController;
        upperViewController = [self upperViewController:upperViewController];
    }
    
    return topMostViewController;
}

- (UIViewController*) upperViewController:(UIViewController*) viewController{
    UIViewController* upperViewController = viewController;
    while (upperViewController.presentedViewController) {
        
        upperViewController = upperViewController.presentedViewController;
    };
    
    if ([upperViewController isKindOfClass:[UINavigationController class]]) {
        upperViewController = [(UINavigationController *)upperViewController visibleViewController];
    } else if ([upperViewController isKindOfClass:[UITabBarController class]]) {
        upperViewController = [(UITabBarController *)upperViewController selectedViewController];
    }
    else if ([upperViewController isKindOfClass:[UIPageViewController class]]){
        UIPageViewController* pageViewController = (UIPageViewController*) upperViewController;
        upperViewController = pageViewController.viewControllers.firstObject;
    }
    
    return upperViewController;
}


@end
