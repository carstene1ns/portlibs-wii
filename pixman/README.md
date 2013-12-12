
# Build and Installation

## configure

```bash
./configure --host=powerpc-eabi --prefix="$DEVKITPRO/portlibs/ppc" \
            --disable-shared --enable-static --disable-vmx \
            PKG_CONFIG_PATH="$DEVKITPRO/portlibs/ppc/lib/pkgconfig" \
            CFLAGS="-g -O2 -Wall -DGEKKO -mcpu=750 -meabi -mhard-float"
```

## compile

```bash
make -C pixman
```

## copy

```bash
make install -C pixman
make install-pkgconfigDATA
```
