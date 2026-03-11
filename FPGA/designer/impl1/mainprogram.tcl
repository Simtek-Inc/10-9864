# Created by Microsemi Libero Software 11.9.2.1
# Tue Mar 10 15:22:10 2026

# (OPEN DESIGN)

open_design "mainprogram.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "mainprogram_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\_swork\10-\9800\9864\FPGA\10-9864\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


layout -timing_driven
report -type "status" {mainprogram_place_and_route_report.txt}
report -type "globalnet" {mainprogram_globalnet_report.txt}
report -type "globalusage" {mainprogram_globalusage_report.txt}
report -type "iobank" {mainprogram_iobank_report.txt}
report -type "pin" -listby "name" {mainprogram_report_pin_byname.txt}
report -type "pin" -listby "number" {mainprogram_report_pin_bynumber.txt}

save_design
