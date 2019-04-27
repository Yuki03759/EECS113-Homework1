#include <stdio.h>
#include <stdlib.h>
#include <assert.h> 
 
int main(int argc, char* argv[]){
    int N = -1;
    
    if(argc == 2){
        N = atoi(argv[1]);
    }else{
        fprintf(stderr, "wrong usage: %s <n> <t>\n", argv[0]);
        return -1;
    }
    
    int ARRAY1[] = {10, 5, 120, 255, 240, 70, 40, 255};
    int ARRAY2[] = {5, 20, 2, 50, 100, 240, 250, 200};
    
    int total = 0;
    int i = 0;
    int temp = 0;
    
    do{
        
        temp = ARRAY1[i]*ARRAY2[i];
        total = total + temp;
        
        i++;
        N--;
    } while(N != 0);
    
    printf("\n total : %d \n", total);
    

    return 0;
}
