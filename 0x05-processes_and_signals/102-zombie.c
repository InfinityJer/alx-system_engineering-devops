#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

int infinite_while(void)
{
    while (1)
    {
        sleep(1);
    }
    return (0);
}

int main(void)
{
    int i;
    pid_t pid;

    for (i = 0; i < 5; i++)
    {
        pid = fork();

        if (pid == -1)
        {
            perror("Error creating child process");
            return (1);
        }
        else if (pid == 0)
        {
            // Child process
            printf("Zombie process created, PID: %d\n", getpid());
            exit(0); // Child process terminates immediately
        }
    }

    infinite_while(); // Parent process goes into an infinite loop

    return (0);
}
