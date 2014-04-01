
# Build and Installation

## download 

http://downloads.sourceforge.net/openil/DevIL-1.7.8.tar.gz

## patch

```bash
patch -p1 < devil-libpng14.patch
```

## configure

```bash
./configure --host=powerpc-eabi --prefix="$DEVKITPRO/portlibs/ppc" \
            --disable-shared --enable-static \
            PKG_CONFIG_LIBDIR="$DEVKITPRO/portlibs/ppc/lib/pkgconfig" \
            CFLAGS="-g -O2 -Wall -DGEKKO -mcpu=750 -meabi -mhard-float \
            -I$DEVKITPRO/portlibs/ppc/include -L$DEVKITPRO/portlibs/ppc/lib"
```

## compile

```bash
make
```

## copy

```bash
make install -C lib
make install-data -C data
```
