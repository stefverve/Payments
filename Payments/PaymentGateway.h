//
//  PaymentGateway.h
//  Payments
//
//  Created by Stefan Verveniotis on 2016-11-04.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

- (void) processPaymentAmount:(NSInteger)payment;
- (BOOL) canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, strong) id<PaymentDelegate> paymentDelegate;

- (void)processPaymentAmount:(NSInteger)payment;
- (BOOL)canProcessPayment;

@end
