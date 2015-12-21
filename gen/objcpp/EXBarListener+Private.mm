// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from test.djinni

#import "EXBarListener+Private.h"
#import "EXBarListener.h"
#import "DJIObjcWrapperCache+Private.h"

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

namespace djinni_generated {

class BarListener::ObjcProxy final
: public ::BarListener
, public ::djinni::ObjcProxyCache::Handle<ObjcType>
{
public:
    using Handle::Handle;
    void bar() override
    {
        @autoreleasepool {
            [Handle::get() bar];
        }
    }
};

}  // namespace djinni_generated

namespace djinni_generated {

auto BarListener::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return ::djinni::get_objc_proxy<ObjcProxy>(objc);
}

auto BarListener::fromCpp(const CppType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return dynamic_cast<ObjcProxy&>(*cpp).Handle::get();
}

}  // namespace djinni_generated
