%{
#include <stdio.h>
float x = 0;
int token_count = 0, m2subadd_flag = 0;
%}

%%

[ \t\n]+              ;
x[0-9]+               { sscanf(yytext, "x%f", &x); printf("Token: %s (x value)\n", yytext); token_count++; }
m2subadd              { printf("Token: %s (Custom Instruction: M2SUBADD)\n", yytext); token_count++; m2subadd_flag = 1; }
"+"|"-"|"*"|"/"|"="   { printf("Token: %s (Operator)\n", yytext); token_count++; }
[0-9]+                { printf("Token: %s (Number)\n", yytext); token_count++; }
.                     { printf("Token: %s (Unknown)\n", yytext); token_count++; }

%%

int yywrap() { return 1; }

int main() {
    char input[256];
    printf("Enter input (e.g., 'x3 m2subadd'):\n");
    fgets(input, sizeof(input), stdin);
    yy_scan_string(input);
    yylex();

    if (x != 0) {
        float z = x * 2 - x + 1;
        if (m2subadd_flag) {
            printf("Assembly (Using M2SUBADD):\n");
            printf("    M2SUBADD r2, r1  # r2 = x * 2 - x + 1\n");
        } else {
            printf("Standard Assembly:\n");
            printf("    MUL r3, r1, #2   # r3 = x * 2\n");
            printf("    SUB r4, r3, r1   # r4 = x*2 - x\n");
            printf("    ADD r2, r4, #1   # r2 = x*2 - x + 1\n");
        }
        printf("Result: z = %.2f\n", z);
    } else {
        printf("Missing x value.\n");
    }

    printf("Total tokens: %d\n", token_count);
    return 0;
}
