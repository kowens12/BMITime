//
//  main.m
//  BMITime
//
//  Created by Katherine Owens on 5/2/17.
//  Copyright © 2017 Katherine Owens. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRPerson *mikey = [[BNRPerson alloc] init];
        
        [mikey setWeightInKilos:96];
        [mikey setHeightInMeters:1.8];
        
        float height = [mikey heightInMeters];
        int weight = [mikey weightInKilos];
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
        
        float bmi = [mikey bodyMassIndex];
        NSLog(@"mikey has a BMI of %F", bmi);
    }
    return 0;
}
