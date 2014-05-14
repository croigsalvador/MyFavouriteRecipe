//
//  CRSNetworkManager.m
//  MyFavouriteRecipe
//
//  Created by Carlos Roig Salvador on 13/05/14.
//  Copyright (c) 2014 RoxeLabs. All rights reserved.
//

#import "CRSNetworkManager.h"
#import "CRSRequestEndPoints.h"


@implementation CRSNetworkManager


+ (CRSNetworkManager *)sharedInstance {
    static CRSNetworkManager * manager = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        if (!manager) {
            manager = [[CRSNetworkManager alloc] initWithDefaultBaseURL];
        }
    });
    return manager;
}

#pragma mark - Custom Initializer
- (instancetype)initWithDefaultBaseURL {
    self = [self initWithBaseURL:[NSURL URLWithString:kBaseURL]];
    if (self) {
        self.responseSerializer = [AFJSONResponseSerializer serializer];
        self.requestSerializer = [AFJSONRequestSerializer serializer];
        [self.requestSerializer setValue:APPLICATION_ID forHTTPHeaderField:kApplicationIDHeaderKey];
        [self.requestSerializer setValue:REST_API_KEY forHTTPHeaderField:kRestAPIHeaderKey];
    }
    return self;
}


- (void)loadPersonsWithSuccessBlock:(SelectionSuccessBlock)successBlock error:(SelectionErrorBlock)error {
    [self GET:kPersonListAPI parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
      
        NSLog(@"JSON Response: %@", responseObject);
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
        NSLog(@"ERROR %@", error);
        
    }];
}


@end
