//
//  AppDelegate.m
//  Project1
//
//  Created by Russell Carlin on 8/29/12.
//  Copyright (c) 2012 Russell Carlin. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    float damage = 10.5f;
    int hp = 150;
    int monsterLVL = 2;
    bool addMob = NO;
    bool potion = YES;
    int lvl = (int)damage + hp / 20;
    
    NSLog(@"Damage Base: %.2f Character Level: %d", damage, lvl);
    
    if ((monsterLVL > 10) || (addMob == YES)){
        NSLog(@"You cannot win this fight! RUN!");
    } else if ((monsterLVL >= 6) && (monsterLVL <= 10)){
        NSLog(@"A strong monster appears!");
        for (float mobHP = 150.00f; mobHP > 0; mobHP = mobHP - damage) {
            NSLog(@"You attack! The monster has %.2f health left!", mobHP);
        }
        
    } else {
        NSLog(@"Don't even think about it!");
    }
    return YES;
}

@end
