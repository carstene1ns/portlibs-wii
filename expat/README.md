
# Build and Installation

## download

http://downloads.sourceforge.net/expat/expat-2.1.0.tar.gz

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
