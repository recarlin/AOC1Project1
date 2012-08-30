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
    float hp = 140.0f;
    int lvl = ((int)damage + hp) / 20;
    int monsterLVL = 6;
    bool boss = NO;
    bool potion = YES;
    int spree = 0;
    
    NSLog(@"Damage Base: %.2f Character Level: %d", damage, lvl);
    
    if ((monsterLVL > 10) || (boss == YES)){
        NSLog(@"You cannot win this fight! RUN!");
    } else if ((monsterLVL >= 6) && (monsterLVL <= 10)){
        /* Big Monster */
        while (hp > 0){
            NSLog(@"A big monster appears!");
            for (float mobHP = 50.0f; mobHP > 0; mobHP = mobHP - damage) {
                NSLog(@"You attack! The monster has %.2f health left.", mobHP);
                hp = hp - 7.5;
                if ((hp <= 0) && (potion = NO)){
                    NSLog(@"You have died! You killed %d monsters.", spree);
                } else if ((hp <= 0) && (potion = YES)){
                    NSLog(@"You use your potion. You now have 50")
                }
            }
        }
    } else if ((monsterLVL >= 1) && (monsterLVL <= 5)){
        /* Little Monster */
        while (hp > 0){
            NSLog(@"A little monster appears!");
            for (float mobHP = 25.0f; mobHP > 0; mobHP = mobHP - damage) {
                NSLog(@"You attack! The monster has %.2f health left!", mobHP);
            }
            hp = hp - 15;
            NSLog(@"You have %d health left.", hp);
        }
    } else {
        /* Bunny */
        NSLog(@"A bunny appears!");
        for (float mobHP = 100.0f; mobHP > 0; mobHP = mobHP - damage) {
            NSLog(@"You attack! The bunny has %.2f health left!", mobHP);
        }
        NSLog(@"Well, that bunny sure was durable...");
    }
    return YES;
}

@end
