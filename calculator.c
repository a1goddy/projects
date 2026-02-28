#include <stdio.h> 

/* Calculator for two numbers */


int main (void) 
{

    int x,y;
    puts("numbers: ");
    scanf("%d %d", &x,&y);
    
    char op;
    puts("operation: (-1 to q) ");
    scanf(" %c", &op);
    
    // if (op == '+') {printf("%d\n", x+y);}
    // if (op == '-') {printf("%d\n", x-y);}
    // if (op == '*') {printf("%d\n", x*y);}
    // if (op == '/') {printf("%d\n", x/y);}
    // if (op == '%') {printf("%d\n", x%y);}
    // if (op == 'q') {puts("skipping");}

    // LOL

    switch (op) {
    case '+': printf("%d\n", x+y); break;
    case '-': printf("%d\n", x-y); break;
    case '*': printf("%d\n", x*y); break;
    case '/': printf("%d\n", x/y); break;
    default:  puts("invalid input");
}
    return 0;
}