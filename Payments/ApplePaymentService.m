//
//  ApplePaymentService.m
//  Payments
//
//  Created by Stefan Verveniotis on 2016-11-04.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void) processPaymentAmount:(NSInteger)payment {
    NSLog(@"Paid %d with %@", (int)payment, self.className);
}

- (BOOL) canProcessPayment {
    BOOL i = arc4random_uniform(2);
    return i;
}

@end
