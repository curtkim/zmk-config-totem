## howto 
```
    nix develop
    just init
    just build
```

## howto(old)

```
    nix develop
    west init -l config
    west update
    west build -s zmk/app -d build/left -b xiao_ble//zmk -- -DSHIELD=totem_left -DZMK_CONFIG=$(pwd)/config
    west build -s zmk/app -d build/right -b xiao_ble//zmk -- -DSHIELD=totem_right -DZMK_CONFIG=$(pwd)/config

    ls build/left/zephyr/zmk.elf
    ls build/right/zephyr/zmk.elf
```


## bluetooth 삭제
```

› bluetoothctl devices
Device C4:C8:86:99:D2:53 TOTEM

zmk-config-totem on  main [✶]
› bluetoothctl remove C4:C8:86:99:D2:53


  bluetoothctl pair XX:XX:XX:XX:XX:XX
  bluetoothctl connect XX:XX:XX:XX:XX:XX
  bluetoothctl trust XX:XX:XX:XX:XX:XX
```
