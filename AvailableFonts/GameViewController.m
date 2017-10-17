//
//  GameViewController.m
//  AvailableFonts
//
//  Created by Ren Jing on 2017/8/16.
//  Copyright © 2017年 FALSESHEEP. All rights reserved.
//

#import "GameViewController.h"
#import "GameScene.h"

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SKScene *scene = [[GameScene alloc] initWithSize:CGSizeMake(1024, 768)];
    SKView *skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    skView.ignoresSiblingOrder = YES;
    scene.scaleMode = SKSceneScaleModeAspectFill;
    [skView presentScene:scene];
}

//- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
//    return UIInterfaceOrientationMaskPortrait;
//}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
