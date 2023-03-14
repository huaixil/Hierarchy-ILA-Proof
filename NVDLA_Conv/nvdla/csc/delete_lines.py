file = open("NV_NVDLA_CSC_wl.v")
newfile = open("NV_NVDLA_CSC_wl_clean.v", "w")
delete_flag = 0
lines = file.readlines()
count = 0
for line in lines:
    count += 1
    if '`ifdef SPYGLASS_ASSERT_ON' in line:
        delete_flag += 1
    if '`ifdef ASSERT_ON' in line:
        delete_flag += 1
    if '// VCS coverage off' in line:
        delete_flag += 1
    if '//VCS coverage off' in line:
        delete_flag += 1

    if (delete_flag == 0):
        newfile.writelines(line)

    if '`endif // SPYGLASS_ASSERT_ON' in line:
        delete_flag -= 1
    if '`endif // ASSERT_ON' in line:
        delete_flag -= 1
    if '// VCS coverage on' in line:
        delete_flag -= 1
    if '//VCS coverage on' in line:
        delete_flag += 1
