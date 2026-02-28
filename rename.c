#include <stdio.h>

/* a simple util for renaming files 
   Usage - rename <filename> <newfilename>
*/

int main(int argc, char *argv[3]) {

    if (argc!=3){
        fprintf(stderr, "Usage %s <old_name> <new_name>\n", argv[0]);
        return 1;
    }

    if (rename(argv[1], argv[2]) != 0){
        perror("rename failed"); //prints the actual OS error
        return 1; 
    }

    printf("Renamed '%s' -> '%s'\n", argv[1], argv[2]);
    return 0;
}
