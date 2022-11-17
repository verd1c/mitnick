default:
	gcc exploit.c -o exploit -lnet

run: default
	sudo ./exploit

capture: default
	sudo rm out.pcapng && sudo timeout 5 tcpdump -w out.pcapng &
	sleep 1
	sudo ./exploit

clean:
	rm *.pcapng
