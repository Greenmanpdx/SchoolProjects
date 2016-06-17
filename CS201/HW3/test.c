#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <inttypes.h>
#define FILENAME "mylargefile.txt"

int main(int argc, char **argv)
{
        struct stat file_status;
        
        if(stat(argv[1], &file_status) != 0){
                perror("ERROR: Could not stat or file does not exist");
        }
        printf("Filesize: %s\n\n",argv[1]);
        printf("b  %9jd \n", ((intmax_t)file_status.st_size));
        printf("Kb %9jd \n", ((intmax_t)file_status.st_size) / 1024);
        printf("Mb %9jd \n", (((intmax_t)file_status.st_size) / 1024) / 1024);
        printf("Gb %9jd \n", ((((intmax_t)file_status.st_size) / 1024)/ 1024)/ 1024);
        
        FILE *fp = fopen (argv[1], "r");
        
        char *buffer = NULL;
        buffer = (char *) malloc(file_status.st_size+1); // + null terminator
        
        if (!fread(buffer, file_status.st_size,1,fp)) { 
        perror("ERROR: Could not read file");
    } 
    buffer[file_status.st_size+1] = '\0'; 
        
        printf("%s\n",buffer);
                
        fclose(fp);
        free(buffer);
                
        return 0;
}
    
