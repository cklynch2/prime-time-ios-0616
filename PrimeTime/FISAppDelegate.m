//
//  FISAppDelegate.m
//  PrimeTime
//
//  Created by Chris Gonzales on 5/14/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"Is the number prime? %d",[self isPrime:349]);
    NSLog(@"This should return the 20th prime: %lu", [self primeNumber:24]);
    
    return YES;
}

-(BOOL)isPrime:(NSInteger)number {
    BOOL isPrime = YES;
    for (NSUInteger i = 2; i < number; i++) {
        if (number % i == 0) {
            isPrime = NO;
        }
    }
    return isPrime;
}

-(NSArray *)generatePrimeNumbersArrayOfCount:(NSUInteger)count {
    NSMutableArray *primes = [NSMutableArray new];
    NSUInteger i = 0;
    while (primes.count < count) {
        NSLog(@"This is the %lu time the while loop has run", i);
        i += 1;
        NSLog(@"This is the value of i: %lu", i);
        if ([self isPrime:i]) {
            NSLog(@"We entered the if statement for %lu", i);
            [primes addObject: @(i)];
        }
    }
    NSLog(@"This is the array of primes: %@", primes);
    return primes;
}

-(NSUInteger)primeNumber:(NSUInteger)prime {
    NSArray *primes = [self generatePrimeNumbersArrayOfCount:prime];
    return [[primes lastObject] integerValue];
}


@end
