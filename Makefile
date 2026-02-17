install:
	install -m755 -t /usr/local/bin/ fanctl
	install -m755 -t /usr/local/bin/ gpuctl
	install -m644 -t /etc/udev/rules.d/ 90-g14.rules
