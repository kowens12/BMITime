//
//  main.m
//  BMITime
//
//  Created by Katherine Owens on 5/2/17.
//  Copyright © 2017 Katherine Owens. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNREmployee *mikey = [[BNREmployee alloc] init];
            
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i/10.0;
            mikey.employeeID = i;

            [employees addObject:mikey];
            
        }
        
        for (int i = 0; i < 10; i++) {
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            NSUInteger randomIndex = random() % [employees count];
            
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAsset:asset];
        }
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"Giving up ownership of arrays");
        
        employees = nil;
    }
    
    BNREmployee *employeeNew = [[BNREmployee alloc] init];
    BNRAsset *newAsset = [[BNRAsset alloc] init];
    NSMutableArray *newAssets = [[NSMutableArray alloc] init];
    newAsset.label = @"asset";
    newAsset.resaleValue = 12.0;
    [newAssets addObject:newAsset];
    [employeeNew addAsset:newAsset];
    NSLog(@"%@, %u", newAsset.label, newAsset.resaleValue);
    [employeeNew removeAsset:newAsset];
    NSLog(@"%@", newAsset);
    
    return 0;
}
