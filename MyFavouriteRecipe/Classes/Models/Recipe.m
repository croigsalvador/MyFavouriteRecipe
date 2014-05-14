//
//  Recipe.m
//  MyFavouriteRecipe
//
//  Created by Carlos Roig Salvador on 14/05/14.
//  Copyright (c) 2014 RoxeLabs. All rights reserved.
//

#import "Recipe.h"

@implementation Recipe

@synthesize recipeName;
@synthesize recipeDescription;
@synthesize ingredients;
@synthesize steps;
@synthesize pictureUrlPath;

// hELLO WORLD

- (id)initWithDictionary:(NSDictionary *) dic {
    
    if (self = [super init]) {
        NSLog(@"32 ");
        NSLog(@"asdasd");
    }
    return self;
}

@end
