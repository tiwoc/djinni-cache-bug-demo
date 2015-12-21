#import <XCTest/XCTest.h>

#include "EXFooListener.h"
#include "EXBarListener.h"
#include "EXCaller.h"
#include "EXStaticCaller.h"

@interface Listener : NSObject <EXFooListener, EXBarListener>
@property bool fooCalled;
@property bool barCalled;
@end

@implementation Listener

- (id) init {
    self = [super init];
    if (self != nil) {
        self.fooCalled = FALSE;
        self.barCalled = FALSE;
    }
    return self;
}

- (void)foo {
    NSLog(@"foo() called!");
    self.fooCalled = TRUE;
}

- (void)bar {
    NSLog(@"bar() called!");
    self.barCalled = TRUE;
}

@end


@interface CacheBugDemoObjcTests : XCTestCase
@end

@implementation CacheBugDemoObjcTests {
    Listener *listener;
}

- (void)setUp {
    [super setUp];
    listener = [Listener new];
}

- (void)testCallFoo {
    EXCaller *caller = [EXCaller initWithFooListener:listener barListener:listener];
    [caller callFoo];

    XCTAssert(listener.fooCalled);
}

- (void)testCallBar {
    EXCaller *caller = [EXCaller initWithFooListener:listener barListener:listener];
    [caller callBar];

    XCTAssert(listener.barCalled);
}

- (void)testCallFooWithListener {
    [EXStaticCaller callFooWithListener:listener];

    XCTAssert(listener.fooCalled);
}

- (void)testCallBarWithListener {
    [EXStaticCaller callBarWithListener:listener];

    XCTAssert(listener.barCalled);
}

@end
