
# Build and Installation

## download

http://downloads.xiph.org/releases/speex/speex-1.2rc1.tar.gz

## configure

```bash
./configure --host=powerpc-eabi --prefix="$DEVKITPRO/portlibs/ppc" \
            --disable-shared --enable-static --enable-fixed-point \
            CFLAGS="-g -O2 -Wall -DGEKKO -mcpu=750 -meabi -mhard-float"
```

## compile

```bash
make -C libspeex
```

## copy

```bash
make install -C libspeex
make install-pkgconfigDATA
```
