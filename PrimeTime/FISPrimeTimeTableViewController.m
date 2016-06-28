//
//  FISPrimeTimeTableViewController.m
//  PrimeTime
//
//  Created by Flatiron School on 6/28/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISPrimeTimeTableViewController.h"

@interface FISPrimeTimeTableViewController ()

@end

@implementation FISPrimeTimeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.accessibilityIdentifier = @"table";
    self.oneHundredPrimes = [self generatePrimeNumbersArrayOfCount:100 startingFromInteger:1];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

-(NSArray *)generatePrimeNumbersArrayOfCount:(NSUInteger)count startingFromInteger:(NSUInteger)integer {
    NSMutableArray *primes = [NSMutableArray new];
    NSUInteger i = integer;
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
    NSArray *primes = [self generatePrimeNumbersArrayOfCount:prime startingFromInteger:1];
    return [[primes lastObject] integerValue];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"primeCell" forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", self.oneHundredPrimes[indexPath.row]];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
