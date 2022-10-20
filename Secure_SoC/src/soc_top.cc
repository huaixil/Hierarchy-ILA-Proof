#include <secure_soc.h>

namespace ilang {

Ila GetSoCIla(const std::string& model_name) {
    auto m = Ila(model_name);

    SetUnsignedComparison(true);
    
    //
    // Interface Signals
    //
    DefineSoCInput(m);

    //
    // Arch States
    //
    DefineSoCState(m);

    //
    // Instructions
    //
    // Config Instructions
    DefineSoCInstrs(m);

    return m;
}

} // namespace ilang
