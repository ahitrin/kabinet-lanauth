$(CC) = gcc

all: lanauth

.PRUNY: clean

debug: lanauth.c
	$(CC) -DDEBUG -g -o lanauth lanauth.c -lcrypto

lanauth: lanauth.c
	$(CC) -Wall -s -o lanauth lanauth.c -lcrypto

clean:
	rm -f lanauth
