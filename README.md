## howto

```
    nix develop
    west init -l config
    west update
    west build -s zmk/app -d build/left -b xiao_ble//zmk -- -DSHIELD=totem_left -DZMK_CONFIG=$(pwd)/config
    west build -s zmk/app -d build/right -b xiao_ble//zmk -- -DSHIELD=totem_right -DZMK_CONFIG=$(pwd)/config

    ls build/left/zephyr/zmk.elf
    ls build/right/zephyr/zmk.elf
```
