//
//  AvailableFontsUITests.m
//  AvailableFontsUITests
//
//  Created by Ren Jing on 2017/10/16.
//  Copyright © 2017年 FALSESHEEP. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "AvailableFontsUITests-Swift.h"

@interface AvailableFontsUITests : XCTestCase

@end

@implementation AvailableFontsUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [Snapshot setupSnapshot: app];
    [app launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.

    XCUIElement *element = [[[[[XCUIApplication alloc] init] childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther].element;
    [Snapshot snapshot:@"01LoginScreen" waitForLoadingIndicator:YES];
    [element tap];
    [Snapshot snapshot:@"02LoginScreen" waitForLoadingIndicator:YES];
    [element tap];
    [Snapshot snapshot:@"03LoginScreen" waitForLoadingIndicator:YES];
    [element tap];
    [Snapshot snapshot:@"04LoginScreen" waitForLoadingIndicator:YES];
    [element tap];
    [Snapshot snapshot:@"05LoginScreen" waitForLoadingIndicator:YES];
}

@end
