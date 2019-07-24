// Remove trailing zeroes from a Nulstellenfont polynomial
// (c) 2019 Ben Logsdon, Anya Michaelson, Ralph Morrison

#include <stdio.h>
#include <ctype.h>

#define NOTLOOKING 0     // Not in a number or no decimal has been seen in the current number, just print the input
#define LOOKINGWITH 1    // Decimal has been seen, and only zeros have been seen after it ("with the decimal in the buffer")
#define LOOKINGWITHOUT 2 // Decimal has been seen, and some nonzero thing was seen in the current number after it ("without the decimal in the buffer")

int main(){
    int state = NOTLOOKING; // Current state
    int zeroes = 0;         // Number of zeroes to be printed

    char c;
    while ((c = fgetc(stdin)) != EOF) {
        if (c == '.') {           // If I see a decimal
            state = LOOKINGWITH; // Just remember I saw a decimal
        }
        else if (state == NOTLOOKING) { // If I haven't seen a decimal
            fputc(c, stdout);           // Just print this character
        }
        else if (c == '0') { // If I see a zero (and I saw a decimal)
            zeroes++;        // Just remember I saw a zero
        }
        else if (isdigit(c)) { // If I see a nonzero digit (and I saw a decimal)
            if (state == LOOKINGWITH) { // If haven't printed the decimal
                fputc('.', stdout);     // Print the decimal
            }
            while (zeroes) { // While unprinted zeroes remain
                fputc('0', stdout); // Print a zero
                zeroes--;
            }
            state = LOOKINGWITHOUT;
            fputc(c, stdout);
        }
        else { // If I see anything that's not part of a decimal number
            state = NOTLOOKING;
            zeroes = 0; // Forget the trailing zeroes
            fputc(c, stdout);
        }
    }
}
