//
//  CRSGlobals.h
//  pdfproto
//
//  Created by Carlos Roig Salvador on 04/05/14.
//  Copyright (c) 2014 RoxeLabs. All rights reserved.
//

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-variable"


#pragma mark - Manager keys definitions

#define crsNetManager                                        [CRSNetworkManager sharedInstance]

//#define lzCoreDataManager                                   [LZCoreDataManager sharedInstance]
//#define mainContext                                         lzCoreDataManager.managedObjectContext

static float kTimeOutRequest                                = 30.0;



// ---------------------------------------------------------------------------------------------------------------------

#pragma mark - Different Devices definitions

#define IS_IPHONE_5         ([[UIScreen mainScreen] bounds].size.height == 568.0f)
#define IS_OS_6_OR_LATER    ([[[UIDevice currentDevice] systemVersion] floatValue] >= 6.0)
#define IS_OS_6_OR_LESS    ([[[UIDevice currentDevice] systemVersion] floatValue] <= 6.1)

#define IS_OS_7_OR_LATER    ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)

// ---------------------------------------------------------------------------------------------------------------------


#define UIColorFromRGB(rgbValue)                           [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

// ---------------------------------------------------------------------------------------------------------------------

#define APPLICATION_ID                              @"WiDtZzZV4GiH1yt2MBoVmfCtZ8wKHCqb9C4HT9MB"
#define CLIENT_KEY                                  @"SW1YWlLo7dzDfi0eF1Yt8bRWS7b8T3loejsDnZvn"
#define REST_API_KEY                                @"JbYFvovoL2ZYBMuwPJ8cRbUuQiv1SUaWK1nSjuh9"


#pragma clang diagnostic pop
