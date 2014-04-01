
# Build and Installation

## download

http://ftp.gnu.org/gnu/libiconv/libiconv-1.14.tar.gz

## patch

```bash
patch -p1 < libiconv-wii.patch
```

## configure

```bash
./configure --host=powerpc-eabi --prefix="$DEVKITPRO/portlibs/ppc" \
            --disable-shared --enable-static \
            CFLAGS="-g -O2 -Wall -DGEKKO -mcpu=750 -meabi -mhard-float"
```

## compile

```bash
make
```

## copy

```bash
make install-lib
```
Optionally, if you need libcharset:
```bash
make install -C libcharset
```
