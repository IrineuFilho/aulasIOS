//
//  ModelController.h
//  Storyboard_parametros
//
//  Created by Irineu Mauricio V T Filho on 11/01/14.
//  Copyright (c) 2014 Irineu Mauricio V T Filho. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@end
