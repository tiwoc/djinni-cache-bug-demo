// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from test.djinni

#import <Foundation/Foundation.h>
@class EXCaller;
@protocol EXBarListener;
@protocol EXFooListener;


@interface EXCaller : NSObject

+ (nullable EXCaller *)initWithFooListener:(nullable id<EXFooListener>)fooListener
                               barListener:(nullable id<EXBarListener>)barListener;

- (void)callFoo;

- (void)callBar;

@end
