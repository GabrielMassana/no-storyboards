//
//  AppDelegate.m
//  no-storyboards
//
//  Created by GabrielMassana on 26/02/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@interface AppDelegate ()

@property (nonatomic, strong) UIViewController *rootViewController;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.clipsToBounds = NO;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

#pragma mark - Window

- (UIWindow *)window
{
    if (!_window)
    {
        _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _window.tintAdjustmentMode = UIViewTintAdjustmentModeNormal;
        _window.rootViewController = self.rootViewController;
    }
    
    return _window;
}

#pragma mark - RootViewController

- (UIViewController *)rootViewController
{
    if (!_rootViewController)
    {
        _rootViewController = [[ViewController alloc] init];
    }
    
    return _rootViewController;
}

@end
