/// \file the ila example of Secure SoC for AES encryption
///  Huaixi Lu (huaixil@princeton.edu)
///

#include <secure_soc.h>
#include <ilang/ilang++.h>

namespace ilang {

void DefineSoCInput(Ila& m) {
    // pc
    m.NewBvInput("pc_in", 8);
    
}


} // namespace ilang