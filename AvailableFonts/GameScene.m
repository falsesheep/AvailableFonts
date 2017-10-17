//
//  GameScene.m
//  AvailableFonts
//
//  Created by Ren Jing on 2017/8/16.
//  Copyright © 2017年 FALSESHEEP. All rights reserved.
//

#import "GameScene.h"

@interface GameScene ()
@property (nonatomic, assign) NSInteger familyIdx;
@end

@implementation GameScene

- (instancetype)initWithSize:(CGSize)size {
    self = [super initWithSize:size];
    if (self) {
        [self showCurrentFamily];
    }
    return self;
}

- (void)showCurrentFamily {
    // 移除之前的node
    [self removeAllChildren];
    // 获取当前font
    NSString *familyName = [UIFont familyNames][_familyIdx];
    NSLog(@"%@", familyName);
    NSArray *fontNames = [UIFont fontNamesForFamilyName:familyName];
    if (fontNames.count == 0) {
        fontNames = @[familyName];
    }
    // 显示当前font
    [fontNames enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:obj];
        label.text = obj;
        label.position = CGPointMake(self.size.width/2,
                                     self.size.height * (idx+1) / (fontNames.count+1));
        label.fontSize = 25;
        label.verticalAlignmentMode = SKLabelVerticalAlignmentModeCenter;
        [self addChild:label];
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _familyIdx++;
    if (_familyIdx >= [UIFont familyNames].count) {
        _familyIdx = 0;
    }
    [self showCurrentFamily];
}

@end
