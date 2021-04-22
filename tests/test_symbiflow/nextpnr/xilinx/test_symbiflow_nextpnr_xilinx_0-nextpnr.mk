#Auto generated by Edalize

TARGET   := test_symbiflow_nextpnr_xilinx_0

all: $(TARGET).fasm

XDCS += --xdc top.xdc

test_symbiflow_nextpnr_xilinx_0.json: test_symbiflow_nextpnr_xilinx_0.mk
	$(EDALIZE_LAUNCHER) $(MAKE) -f $<

test_symbiflow_nextpnr_xilinx_0.fasm: test_symbiflow_nextpnr_xilinx_0.json
	$(EDALIZE_LAUNCHER) nextpnr-xilinx --chipdb chipdb.bin $(XDCS) --json test_symbiflow_nextpnr_xilinx_0.json --write test_symbiflow_nextpnr_xilinx_0.routed.json --fasm test_symbiflow_nextpnr_xilinx_0.fasm --log nextpnr.log --fake_option 1000

clean:
	$(EDALIZE_LAUNCHER) rm -f $(TARGET).fasm $(TARGET).routed.json
