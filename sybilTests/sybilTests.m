//
//  sybilTests.m
//  sybilTests
//
//  Created by Jason Jobe on 2/26/14.
//  Copyright (c) 2014 Jason Jobe. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"


void plog (NSString *fmt, ...) {
    va_list args;
    va_start(args, fmt);

    NSString *str = [[NSString alloc] initWithFormat:fmt arguments:args];

    NSInteger cnt = [str length];
    for (NSInteger ndx = 0; ndx < cnt; ++ndx) {
        unichar ch = [str characterAtIndex:ndx];
        fputc(ch, stdout);
    }
    fputc ('\n', stdout);
    va_end(args);
}

@interface Spouse : Entity
@property Person *spouse;
- (BOOL)isMarried;
@end

@implementation Spouse
@dynamic spouse;
- (BOOL)isMarried {
    return YES;
}
@end

@interface sybilTests : XCTestCase

@end

@implementation sybilTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- makeGeorge
{
    Person *george = [Person entityNamed:@"George Jetson"];

    Spouse *sp = [george becomeClassForType:[Spouse class]];
    sp.spouse = [Person entityNamed:@"Jane Jetson"];

    plog (@"George is married to %@", [(id)george spouse]);
    return george;
}

- (void)testExample_1
{
    Person *george = [self makeGeorge];
    plog (@"%@", [george longDescription]);

    plog (@"George %s married", ([(id)george isMarried] ? "is" : "is NOT"));
    //    plog (@"Jane %s married", ([(id)[(id)george spouse] isMarried] ? "is" : "is NOT"));

    plog (@"It is %@", ([george is_a:@"Spouse"] ?@"true" : @"false"));
}


@end
