/// \file the ila example of EMESH-AXI-Bridge
///  Huaixi Lu (huaixil@princeton.edu)
///

#include <ilang/ilang++.h>
#include <vector>


using namespace ilang;

#define S_IDW 12
#define DATA_LEN 64
#define PW 104
#define AW 32
#define DW 32
#define RETURN_ADDR BvConst(0,AW)
#define TW 16  //timeout counter width


#define BURST_FIXED BvConst(0,2)
#define BURST_INCR  BvConst(1,2)
#define BURST_WRAP  BvConst(2,2)

/// \brief the class of emesh-axi-slave ila
class EmeshAxiTop {

public:
  // --------------- CONSTRUCTOR ------ //
  /// add state, add instructions, add child
  EmeshAxiTop();
  // --------------- MEMBERS ----------- //
  /// the ila model for write channels
  Ila wmodel;
  /// the ila model for read channels
  Ila rmodel;

protected:
  // --------------- HELPERS -------- //
  /// a nondeterministic choice of a or b
  static ExprRef unknown_choice(const ExprRef& a, const ExprRef& b);
  /// a nondeterminstic bitvector const of width
  static FuncRef unknown(unsigned width);
  static ExprRef unknownVal(unsigned width);
  /// a helper function to concat a vector of express
  static ExprRef lConcat(const std::vector<ExprRef> & l);


protected:
  // ------------ STATE ------------ //
  // reset
  ExprRef axi_aresetn_r;
  ExprRef axi_aresetn_w;

  // AXI -- Write address
  // Input
  ExprRef write_addr_valid;
  ExprRef awaddr;
  ExprRef awburst;
  ExprRef awlen;
  ExprRef awsize;
  // ExprRef awid;
  // ExprRef awcache;
  // ExprRef awlock;
  // ExprRef awprot;
  // ExprRef awqos;   

  // State
  ExprRef tx_wactive;
  ExprRef tx_bwait;
  ExprRef tx_wlast;
  ExprRef tx_awlen;
  ExprRef tx_awsize;
  ExprRef tx_awaddr;
  ExprRef tx_awburst;

  // AXI -- Write data 
  ExprRef write_valid;
  ExprRef write_ready;

  // AXI -- Buffered Write response
  ExprRef bready;

  /*********************************/
  /****** AXI -- Read address ******/   
  /*********************************/
  ExprRef araddr;
  ExprRef arburst;
  ExprRef arlen;
  ExprRef arsize;
  // ExprRef arid;    //read address ID
  // ExprRef arcache;
  // ExprRef arlock;
  // ExprRef arprot;
  // ExprRef arqos;
  ExprRef read_addr_valid;

  // internal state

  ExprRef tx_ractive;
  ExprRef tx_rlast;
  
  ExprRef tx_arlen;
  ExprRef tx_arsize;
  ExprRef tx_araddr;
  ExprRef tx_arburst;

  // AXI -- Read data
  ExprRef read_valid;
  ExprRef read_ready;
  //ExprRef read_data_7_0;
  //ExprRef read_data_15_0;
  //ExprRef read_data_31_0;
  //ExprRef read_resp;
};



