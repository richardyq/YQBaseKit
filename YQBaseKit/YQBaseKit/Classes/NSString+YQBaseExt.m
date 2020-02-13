//
//  NSString+YQBaseExt.m
//  Masonry
//
//  Created by 殷全 on 2020/2/13.
//

#import "NSString+YQBaseExt.h"

@implementation NSString (YQBaseExt)

- (BOOL) isEmptyString{
    BOOL isEmpty = YES;
    
    if (self.length == 0) {
        isEmpty = NO;
    }
    
    return isEmpty;
}

@end
