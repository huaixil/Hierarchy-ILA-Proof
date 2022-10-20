/// \file the ila example of Secure SoC for AES encryption
///  Huaixi Lu (huaixil@princeton.edu)
///

#ifndef SECURE_SOC_H__
#define SECURE_SOC_H__

#include <string>
#include <ilang/ilang++.h>

namespace ilang {

#define AES_START 0xff00
#define AES_STATE 0xff01
#define AES_ADDR 0xff02
#define AES_LENGTH 0xff04
#define AES_KEY 0xff20
#define AES_CNT 0xff10

#define CMD_NOP 0
#define CMD_READ 1
#define CMD_WRITE 2

#define AES_STATE_IDLE 0
#define AES_STATE_READ_DATA 1
#define AES_STATE_OPERATE 2
#define AES_STATE_WRITE_DATA 3

Ila GetSoCIla(const std::string& model_name = "secure_soc");
void DefineSoCInput(Ila& m);
void DefineSoCState(Ila& m);
void DefineSoCInstrs(Ila& m);

ExprRef slice_update(const ExprRef& reg, const ExprRef& idx,
                              const ExprRef& input_slice,
                              unsigned long base_addr, unsigned no_slice,
                              unsigned slice_width);
ExprRef slice_read(const ExprRef& reg, const ExprRef& idx,
                        unsigned long base_addr, unsigned num_slice,
                        unsigned slice_width);

} // namespace ilang

#endif // SECURE_SOC_H__