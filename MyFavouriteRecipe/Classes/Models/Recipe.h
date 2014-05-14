//
//  Recipe.h
//  MyFavouriteRecipe
//
//  Created by Carlos Roig Salvador on 14/05/14.
//  Copyright (c) 2014 RoxeLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property (copy, nonatomic) NSString *recipeName;
@property (copy, nonatomic) NSString *recipeDescription;

@property (copy, nonatomic) NSArray  *ingredients;
@property (copy, nonatomic) NSString *pictureUrlPath;

@property (strong, nonatomic) NSArray *steps;

@end
