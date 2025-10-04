# Default target: build the .dsk
all: HD30_512\ -\ Mac\ Plus\ Kiosk.dsk

HD30_512\ -\ Mac\ Plus\ Kiosk.dsk: HD30_512\ -\ Mac\ Plus\ Kiosk.hda.ori
	@echo "Converting $< to $@"
	dd if="$<" of="$@" bs=512 skip=96 count=38965 status=progress

clean:
	rm -f HD30_512\ -\ Mac\ Plus\ Kiosk.dsk
