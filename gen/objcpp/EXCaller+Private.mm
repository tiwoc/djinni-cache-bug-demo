// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from test.djinni

#import "EXCaller+Private.h"
#import "EXCaller.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "EXBarListener+Private.h"
#import "EXCaller+Private.h"
#import "EXFooListener+Private.h"
#include <exception>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface EXCaller ()

- (id)initWithCpp:(const std::shared_ptr<::Caller>&)cppRef;

@end

@implementation EXCaller {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::Caller>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Caller>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (nullable EXCaller *)initWithFooListener:(nullable id<EXFooListener>)fooListener
                               barListener:(nullable id<EXBarListener>)barListener {
    try {
        auto r = ::Caller::initWithFooListener(::djinni_generated::FooListener::toCpp(fooListener),
                                               ::djinni_generated::BarListener::toCpp(barListener));
        return ::djinni_generated::Caller::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)callFoo {
    try {
        _cppRefHandle.get()->callFoo();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)callBar {
    try {
        _cppRefHandle.get()->callBar();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto Caller::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto Caller::fromCpp(const CppType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<EXCaller>(cpp);
}

}  // namespace djinni_generated

@end