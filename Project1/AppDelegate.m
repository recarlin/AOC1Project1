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
    
// user-defined variables - the recommendations are so you don't get a VERY long console log
    float damage = 15.5f; /* I wouldn't go over 50 */
    float hp = 150.5f; /* I wouldn't go over 200 */
    int monsterLVL = 6;
    int potion = 2; /* I wouldn't go over 5 */
    bool boss = NO;
    
// cast float to int
    int lvl = ((int)damage + hp) / 20;
    int spree = 0;
    
// NSLog float and casted int
    NSLog(@"Damage Base: %.2f Character Level: %d", damage, lvl);
// or comparison with int and bool
    if ((monsterLVL > 10) || (boss == YES)){
        NSLog(@"You cannot win this fight! RUN!");
    } else if ((monsterLVL >= 6) && (monsterLVL <= 10)){
// while loop incrementing int spree with output
        while (hp > 0){
            NSLog(@"A big monster appears!");
// nested for loop with output
            for (float mobHP = 50.0f; mobHP > 0; mobHP = mobHP - damage){
                if (damage >= mobHP){
                    NSLog(@"You attack and slay the monster!");
                    hp = hp - 8.5;
                } else {
                    NSLog(@"The monster has %.2f health. You attack!", mobHP);
                    hp = hp - 15.5;
                }
// and comparison with int and float
                if ((hp <= 0) && (potion <= 0)){
                    break;
                } else if ((hp <= 0) && (potion >= 1)){
                    hp = 100;
                    potion--;
                    NSLog(@"You use a potion. You now have 100 health.");
                } else {
                    NSLog(@"You took damage! You have %.2f health left.", hp);
                }
            }
            if (hp <= 0){
                NSLog(@"You have died! You defeated %d monsters.", spree);
            } else {
                NSLog(@"You defeated the monster!");
                spree++;
            }
        }
    } else if ((monsterLVL >= 1) && (monsterLVL <= 5)){
        while (hp > 0){
            NSLog(@"A big monster appears!");
            for (float mobHP = 25.0f; mobHP > 0; mobHP = mobHP - damage){
                if (damage >= mobHP){
                    NSLog(@"You attack and slay the monster!");
                    hp = hp - 4.5;
                } else {
                    NSLog(@"The monster has %.2f health. You attack!", mobHP);
                    hp = hp - 8.5;
                }
// if check
                if ((hp <= 0) && (potion <= 0)){
                    break;
// else if check
                } else if ((hp <= 0) && (potion >= 1)){
                    hp = 100;
                    potion--;
                    NSLog(@"You use a potion. You now have 100 health.");
// else check
                } else {
                    NSLog(@"You took damage! You have %.2f health left.", hp);
                }
            }
            if (hp <= 0){
                NSLog(@"You have died! You defeated %d monsters.", spree);
            } else {
                NSLog(@"You defeated the monster!");
                spree++;
            }
        }
    } else {
        NSLog(@"A bunny appears!");
// single for loop with output
        for (float mobHP = 100.0f; mobHP > 0; mobHP = mobHP - damage) {
            NSLog(@"You attack! The bunny has %.2f health left!", mobHP);
        }
        NSLog(@"Well, that bunny sure was durable...");
    }
    return YES;
}

@end
