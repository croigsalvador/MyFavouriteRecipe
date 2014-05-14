//
//  RequestEndPoints.h
//  MyFavouriteRecipe
//
//  Created by Carlos Roig Salvador on 13/05/14.
//  Copyright (c) 2014 RoxeLabs. All rights reserved.
//

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-variable"


static NSString *kBaseURL                                         = @"https://api.parse.com";
//static NSString *kBaseURL

//static NSString *kBaseURL                                         =@"http://www.lezeus.com";
//static NSString *kAPITimeLineLast                                = @"/restful/timelinecarlos.php?limit=20&offset=0&user=roxeman3";

#pragma mark - HEADERS 

static NSString *kApplicationIDHeaderKey                          = @"X-Parse-Application-Id";
static NSString *kRestAPIHeaderKey                                = @"X-Parse-REST-API-Key";


#pragma mark - API Services

static NSString *kPersonListAPI                                   = @"/1/classes/Person";

#pragma mark - API TAG