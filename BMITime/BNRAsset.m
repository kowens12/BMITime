//
//  BNRAsset.m
//  BMITime
//
//  Created by Katherine Owens on 5/8/17.
//  Copyright © 2017 Katherine Owens. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end
