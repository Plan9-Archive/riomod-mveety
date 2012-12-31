#include <u.h>
#include <libc.h>

extern int debugging;

void
dprint(char *output)
{
	if (debugging == 1) {
		print("riomod: debug: ");
		print(output);
		print("\n");
	}
}