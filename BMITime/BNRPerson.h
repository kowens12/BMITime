//
//  BNRPerson.h
//  BMITime
//
//  Created by Katherine Owens on 5/2/17.
//  Copyright © 2017 Katherine Owens. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

{
    float _heightInMeters;
    float _weightInKilos;
}

- (float)heightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)weightInKilos;
- (void)setWeightInKilos:(int)w;

- (float)bodyMassIndex;

@end
