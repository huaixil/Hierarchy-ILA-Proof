/// \file the ila example of Secure SoC for AES encryption
///  Huaixi Lu (huaixil@princeton.edu)
///

#include <ilang/ilang++.h>

#include <secure_soc.h>

namespace ilang {

void DefineSoCInstrs(Ila& m) {

    auto soc_write = m.input("pc_in") == 0xf0 | m.input("pc_in") == 0xf2 | m.input("pc_in") == 0xf3;
    auto soc_read =  m.input("pc_in") == 0xe0 | m.input("pc_in") == 0xe2 | m.input("pc_in") == 0xe3;

    auto is_status_idle = m.state("aes_status") == AES_STATE_IDLE;
    auto DPTR = Concat(m.state("DPH"), m.state("DPL"));
    auto address = m.state("aes_address");
    auto length = m.state("aes_length");
    auto key = m.state("aes_key");
    auto counter = m.state("aes_counter");
    auto status = m.state("aes_status");

    {  // WRITE
        auto instr = m.NewInstr("WRITE");
        instr.SetDecode( soc_write & (m.input("pc_in") == 0xf0) );
        
        instr.SetUpdate(address,
          Ite(is_status_idle & (DPTR >= AES_ADDR) & (DPTR < AES_ADDR + 2) ,
            Concat(         // if idle, update one slice of the register at a time
              Ite(DPTR == AES_ADDR + 1, m.state("ACC"), address(15,8) ), // the upper 8-bits
              Ite(DPTR == AES_ADDR    , m.state("ACC"), address( 7,0) )), // the lower 8-bits
            address)        // if not idle, no change
        ); // update a slice of the register. Slice selected by the cmd address

        instr.SetUpdate(length, 
          Ite(is_status_idle & (DPTR >= AES_LENGTH) & (DPTR < AES_LENGTH + 2),
            slice_update(length, DPTR, m.state("ACC"), AES_LENGTH, 2, 8), length)
        );
        
        instr.SetUpdate( key, 
          Ite(is_status_idle & (DPTR >= AES_KEY) & (DPTR < AES_KEY + 16),
            slice_update(key, DPTR, m.state("ACC"), AES_KEY, 16, 8), key));

        instr.SetUpdate(counter,
          Ite(is_status_idle & (DPTR >= AES_CNT) & (DPTR < AES_CNT + 16),
            slice_update(counter, DPTR, m.state("ACC"), AES_CNT, 16, 8), counter));
    }

    { // START_ENCRYPT
      auto instr = m.NewInstr("START_ENCRYPT");

      instr.SetDecode(soc_write & (m.input("pc_in") == 0xf0) & (DPTR == AES_START) & (m.state("ACC") == 1));
      // if it is idle, we will start, if it is not idle, there is no guarantee
      // what it may become
      instr.SetUpdate(status, Ite(is_status_idle, BvConst(1, 2), status));
    }

    { // READ
      auto instr = m.NewInstr("READ");

      instr.SetDecode(soc_read & (m.input("pc_in") == 0xe0) & (
      ((DPTR >= AES_ADDR) & (DPTR < AES_ADDR + 2)) |
      ((DPTR >= AES_KEY) & (DPTR < AES_KEY + 16)) |
      ((DPTR >= AES_LENGTH) & (DPTR < AES_LENGTH + 2)) |
      ((DPTR >= AES_CNT) & (DPTR < AES_CNT + 16))
      ));

      instr.SetUpdate(m.state("ACC"), 
        Ite((DPTR >= AES_ADDR) & (DPTR < AES_ADDR + 2), slice_read(address, DPTR, AES_ADDR, 2, 8), 
        Ite((DPTR >= AES_KEY) & (DPTR < AES_KEY + 16), slice_read(key, DPTR, AES_KEY, 16, 8),
        Ite((DPTR >= AES_LENGTH) & (DPTR < AES_LENGTH + 2), slice_read(length, DPTR, AES_LENGTH, 2, 8),
        Ite((DPTR >= AES_CNT) & (DPTR < AES_CNT + 16), slice_read(counter, DPTR, AES_CNT, 16, 8),
        m.state("ACC"))
        ))));

      // guarantee no change
      instr.SetUpdate(key, key);
      instr.SetUpdate(address, address);
      instr.SetUpdate(length, length);
      // but not the following two:
      // instr.SetUpdate(status, status);
      // instr.SetUpdate(counter, counter);
  }
}
}