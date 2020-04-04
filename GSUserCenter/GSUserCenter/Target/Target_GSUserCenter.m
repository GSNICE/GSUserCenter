//
//  Target_GSUserCenter.m
//  GSUserCenter
//
//  Created by Gavin on 2020/4/4.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#import "Target_GSUserCenter.h"
#import "GSUserCenterViewController.h"

@implementation Target_GSUserCenter

- (UIViewController *)Action_viewController:(NSDictionary *)params {
    GSUserCenterViewController *viewController = [[GSUserCenterViewController alloc] init];
    return viewController;
}

@end
