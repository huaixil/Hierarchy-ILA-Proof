/// \file the ila example of Secure SoC for AES encryption
///  Huaixi Lu (huaixil@princeton.edu)
///

#include <secure_soc.h>
#include <ilang/ilang++.h>

namespace ilang {

void DefineSoCState(Ila& m) {
    m.NewBvState("aes_address", 16);
    m.NewBvState("aes_length", 16);
    m.NewBvState("aes_key", 128);
    m.NewBvState("aes_counter", 128);
    m.NewBvState("aes_status", 2);

    m.NewBvState("ACC", 8); // data to be updated in cmd
    m.NewBvState("DPH", 8); // addr to be updated in cmd 
    m.NewBvState("DPL", 8);
}


} // namespace ilang