//
//  CRSNetworkManager.h
//  MyFavouriteRecipe
//
//  Created by Carlos Roig Salvador on 13/05/14.
//  Copyright (c) 2014 RoxeLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^SelectionSuccessBlock)(NSMutableArray *);
typedef void(^SelectionErrorBlock)(NSError *);


@interface CRSNetworkManager : AFHTTPSessionManager

+ (CRSNetworkManager *)sharedInstance ;
- (void)loadPersonsWithSuccessBlock:(SelectionSuccessBlock)successBlock error:(SelectionErrorBlock)error;
@end
