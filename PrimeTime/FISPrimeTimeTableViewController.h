//
//  FISPrimeTimeTableViewController.h
//  PrimeTime
//
//  Created by Flatiron School on 6/28/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FISPrimeTimeTableViewController : UITableViewController
@property (strong, nonatomic) NSArray *oneHundredPrimes;

-(NSUInteger)primeNumber:(NSUInteger)prime;
@end
