onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ald_opt

do {wave.do}

view wave
view structure
view signals

do {ald.udo}

run -all

quit -force
