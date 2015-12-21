#include "StaticCaller.hpp"

#include "FooListener.hpp"
#include "BarListener.hpp"

void StaticCaller::callFooWithListener(const std::shared_ptr<FooListener> & listener) {
    listener->foo();
}

void StaticCaller::callBarWithListener(const std::shared_ptr<BarListener> & listener) {
    listener->bar();
}
