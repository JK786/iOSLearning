//
//  InMainThreadTests.m
//  InMainThreadTests
//
//  Created by jibran khan on 13/01/17.
//  Copyright © 2017 jibran khan. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface InMainThreadTests : XCTestCase

@end

@implementation InMainThreadTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end