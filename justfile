init:
    [ -f .west/config ] || west init -l config
    west update

build:
    west build -s zmk/app -d build/left -b xiao_ble//zmk -- -DSHIELD=totem_left -DZMK_CONFIG=$(pwd)/config
    west build -s zmk/app -d build/right -b xiao_ble//zmk -- -DSHIELD=totem_right -DZMK_CONFIG=$(pwd)/config
