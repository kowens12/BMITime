//
//  main.m
//  BMITime
//
//  Created by Katherine Owens on 5/2/17.
//  Copyright © 2017 Katherine Owens. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNREmployee *mikey = [[BNREmployee alloc] init];
        
        mikey.heightInMeters = 96;
        mikey.weightInKilos = 1.8;
        mikey.employeeID = 12;

        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
        
        mikey.hireDate = [dateFormatter dateFromString:@"Aug 2nd, 2010"];
        
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
        NSLog(@"Employee %u hired on %@", mikey.employeeID, mikey.hireDate);
        
        float bmi = [mikey bodyMassIndex];
        double years = [mikey yearsOfEmployment];
        NSLog(@"mikey has a BMI of %.2f, has worked with us for %.2f years", bmi, years);
    }
    return 0;
}
