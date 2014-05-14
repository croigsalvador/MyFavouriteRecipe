//
//  CRSMainViewController.m
//  MyFavouriteRecipe
//
//  Created by Carlos Roig Salvador on 13/05/14.
//  Copyright (c) 2014 RoxeLabs. All rights reserved.
//

#import "CRSMainViewController.h"
#import "CRSRequestEndPoints.h"

@interface CRSMainViewController ()

@end

@implementation CRSMainViewController {
    SelectionSuccessBlock successBlock;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UILabel *titleLbl = [[UILabel alloc] initWithFrame:CGRectMake(75, 105, 200, 14)];
    [titleLbl setTextColor:UIColorFromRGB(0x7B2F19)];
    [titleLbl setFont:[UIFont systemFontOfSize:14]];
    [titleLbl setBackgroundColor:[UIColor clearColor]];
    [titleLbl setText:@"Lo que sea"];
    [self.view addSubview:titleLbl];
    
    //[self AFNetwotkingTest];
   [self loadPersonsList];
    
}

-(void) loadPersonsList {
    
    successBlock = ^(NSMutableArray *response) {
     
        
    };
    [crsNetManager loadPersonsWithSuccessBlock:successBlock error:nil];
}

//- (void)AFNetwotkingTest {
//    NSURL * URL = [NSURL URLWithString:kBaseURL];
//    AFHTTPRequestOperationManager * manager = [[AFHTTPRequestOperationManager manager]initWithBaseURL:URL];
//    
//    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
//    manager.responseSerializer = [AFJSONResponseSerializer serializer];
//    
////    [manager.requestSerializer setValue:APPLICATION_ID forHTTPHeaderField:@"X-Parse-Application-Id"];
////    [manager.requestSerializer setValue:CLIENT_KEY forHTTPHeaderField:@"X-Parse-REST-API-Key" ];
////    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
//    
//    [manager GET:kAPITimeLineLast parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        NSLog(@"%@", responseObject);
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        NSLog(@"error = %@", operation.responseString);
//    }];
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
