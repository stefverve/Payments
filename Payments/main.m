//
//  main.m
//  Payments
//
//  Created by Stefan Verveniotis on 2016-11-04.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "PaymentGateway.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double randValue = arc4random_uniform(901) + 100;
        NSInteger input = [[InputCollector getString: [NSString stringWithFormat:@"\n\nThank you for shopping at Acme.com Your total today is $%f Please select your payment method: \n  1: Paypal, \n  2: Stripe, \n  3: Amazon\n  4: Apple", randValue]] intValue];
        NSLog(@"%d",(int)input);
        PaymentGateway *pG = [PaymentGateway new];
        switch ((int)input) {
            case 1: {
                PaypalPaymentService *pPS = [PaypalPaymentService new];
                pG.paymentDelegate = pPS;
                break;
            } case 2: {
                StripePaymentService *sPS = [StripePaymentService new];
                pG.paymentDelegate = sPS;
                break;
            } case 3: {
                AmazonPaymentService *aPS = [AmazonPaymentService new];
                pG.paymentDelegate = aPS;
                break;
            } case 4: {
                ApplePaymentService *applePS = [ApplePaymentService new];
                pG.paymentDelegate = applePS;
                break;
            } default:
                break;
        }
        [pG processPaymentAmount:randValue];
    }
    return 0;
}
