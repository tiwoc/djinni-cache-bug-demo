#include "Caller.hpp"

#include "FooListener.hpp"
#include "BarListener.hpp"

class CallerImpl : public Caller {
public:
    CallerImpl(const std::shared_ptr<FooListener> &fooListener, const std::shared_ptr<BarListener> &barListener)
    : fooListener(fooListener), barListener(barListener)
    {}

    void callFoo() override {
        fooListener->foo();
    }

    void callBar() override {
        barListener->bar();
    }

private:
    std::shared_ptr<FooListener> fooListener;
    std::shared_ptr<BarListener> barListener;
};

std::shared_ptr<Caller> Caller::initWithFooListener(const std::shared_ptr<FooListener> &fooListener, const std::shared_ptr<BarListener> &barListener) {
    return std::make_shared<CallerImpl>(fooListener, barListener);
}
