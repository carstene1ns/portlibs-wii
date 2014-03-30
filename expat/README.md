
# Build and Installation

## configure

```bash
./configure --host=powerpc-eabi --prefix="$DEVKITPRO/portlibs/ppc" \
            --disable-shared --enable-static \
            CFLAGS="-g -O2 -Wall -DGEKKO -mcpu=750 -meabi -mhard-float"
```

## compile

```bash
make buildlib
```

## copy

```bash
make installlib
```
