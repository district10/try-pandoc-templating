---
files:
  - file5.txt
  - file6.txt
apples:
  - model: mini2
    price: 1234
  - model: mini3
    price: 5678
foo:
    bar:
        baz: foobarbaz
code: |
    #include <stdio.h>

    int main( int argc, char **argv)
    {
        int a = atoi( argv[1] );
        int b = atoi( argv[2] );
        printf( "a + b = %d + %d = %d\n", a, b, a+b );
        return 0;
    }
code2: |
    ```c
    #include <stdio.h>

    int main( int argc, char **argv)
    {
        int a = atoi( argv[1] );
        int b = atoi( argv[2] );
        printf( "a + b = %d + %d = %d\n", a, b, a+b );
        return 0;
    }
    ```

...

`file{1..6}.txt`
