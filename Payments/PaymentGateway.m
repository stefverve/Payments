//
//  PaymentGateway.m
//  Payments
//
//  Created by Stefan Verveniotis on 2016-11-04.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void)processPaymentAmount:(NSInteger)payment {
    if (self.canProcessPayment) {
        [self.paymentDelegate processPaymentAmount:payment];
    } else {
        NSLog(@"Sorry, your payment cannot be made at this time.");
    }
}

- (BOOL)canProcessPayment {
    return [self.paymentDelegate canProcessPayment];
}

@end
