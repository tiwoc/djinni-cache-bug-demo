// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from test.djinni

#include "Caller.hpp"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class EXCaller;

namespace djinni_generated {

class Caller
{
public:
    using CppType = std::shared_ptr<::Caller>;
    using ObjcType = EXCaller*;

    using Boxed = Caller;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCpp(const CppType& cpp);

private:
    class ObjcProxy;
};

}  // namespace djinni_generated

