#include <stdio.h>
#include <stdlib.h> // for sprintf

// C doesn't directly support returning a string without pointers because strings are essentially character arrays. 
const char* print_string(char *str, int age) {
    static char output[50]; // declare a character pointer
    sprintf(output, "My name is %s and my age is %d", str, age);

    return output;
}
