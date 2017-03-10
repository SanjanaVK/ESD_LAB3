
//#include <mcs51/8051.h>
// Last Revision:  October 4, 2009
#include <at89c51ed2.h>  //also includes 8052.h and 8051.h
#include <mcs51reg.h>
//#include <8052.h>   // also included in at89c51ed2.h
#include <stdio.h>
#include <stdlib.h>
#include  <string.h>
//#include <malloc.h>



volatile int gg;  // global


#define HEAP_SIZE 2500   // size must be smaller than available XRAM
unsigned char  heap[HEAP_SIZE];

char * getstr();
char getchar ();
void putchar (char c);
void putstr (char *s);
char data_get[50];
char * buffer_create(unsigned int size);
void buffer_shift(unsigned int buffer_result);

unsigned int i,j,new_result,buffer_index,buffer_result,num_buffers,result=0;

	 xdata char * buffer0;  // pointers
	 xdata char * buffer1;
     char * buffer_array[50];
	char * size;
	char * size1;
	char cmd, buffer_num;



// compiler flags
// -c -mmcs51 --std-sdcc99 --verbose --model-large

// linker flags for C501 with code in SRAM at 0x6000 and data in SRAM at 0xC000
// --code-loc 0x6000 --code-size 0x6000 --xram-loc 0xC000 --xram-size 0x0400 --model-large --out-fmt-ihx

// linker flags for AT89C51RC2 with code in Flash at 0x0000 and data in internal XRAM at 0x0000
// --code-loc 0x0000 --code-size 0x8000 --xram-loc 0x0000 --xram-size 0x400 --model-large --out-fmt-ihx

// linker flags for AT89C51RC2 with code in Flash at 0x0000 and data in internal/external XRAM at 0x0000
// --code-loc 0x0000 --code-size 0x8000 --xram-loc 0x0000 --xram-size 0x8400 --model-large --out-fmt-ihx

// All processor XRAM should be enabled before the call to main().
// This can be done in a user supplied _sdcc_external_startup() function.
// See section 3.11.1 of sdccman.pdf for SDCC revision 2.6.0.




_sdcc_external_startup()
{
    AUXR |= 0x0C;
    TMOD=0x20; //use Timer 1, mode 2
    TH1=0xFA; //4800 baud rate
    SCON=0x50;
    TR1=1;
    TI=1;
    return 0;
}

void main()
{

	buffer_index=2;
	num_buffers=2;


	init_dynamic_memory((MEMHEADER xdata *)heap, HEAP_SIZE);
    do
    {
        do
    {
        printf("Enter the buffer size between 32 and 2400 bytes divisible by 8\r\n");
        size= getstr();
	    putstr(size);
//	zz = 1;
	    i=0;
	    result=0;
	    while(*(size+i)!='\0')
        {
        result = result * 10 + ( *(size+i)- '0' );
        i++;
        }
        printf("num value is %d\r\n",result);

    }while(((result%8)!=0)||(result<32)||(result>2400));

        if ((buffer0 = malloc((result))) == 0)  //allocate buffer0
        {
        printf_small("malloc buffer0 failed, Please enter a smaller size\n\r");
        free(buffer0);
        }

	    if ((buffer1 = malloc((result))) == 0)         //allocate buffer1
	    {
		printf ("malloc buffer1 failed, Please enter a smaller size\n\r");
		free (buffer1);
		free (buffer0);  // if buffer1 malloc fails, free buffer 0
	    }

	} while ((buffer0 == 0) || (buffer1 == 0));

	printf ("malloc passed\n\r");
	buffer_array[0]=buffer0;
	buffer_array[1]=buffer1;
	j=0;

	while(1)
    {
        printf_tiny("Enter a character\n\r");
	    cmd=getchar();
	    putchar(cmd);
        if((cmd >='a' && cmd <='z') || (cmd >='0' && cmd <='9'))
        {
            printf_small("It is a storage character\n\r");
            *(buffer0+j)=cmd;
            j++;
        }
        else
        {

            printf_small("it is a command character\n\r");
            switch(cmd)
        {
        case '+':
            do
            {
                do
                {
                printf_small("Please enter a new buffer size between 20 and 400\n\r");
                size1= getstr();
	            putstr(size1);
	            i=0;
	            new_result=0;
                while(*(size1+i)!='\0')
                {
                    new_result = new_result * 10 + ( *(size1+i)- '0' );
                    i++;
                }
                    printf("num value is %d\r\n",new_result);
                }while(new_result<=20 || new_result>=400);

                    buffer_array[buffer_index]=buffer_create(new_result);
                    if ((buffer_array[buffer_index]) == 0)  //allocate buffer0
                {
                    printf_small("malloc buffer%d failed, Please enter a smaller size\n\r",buffer_index);
                    free(buffer_array[buffer_index]);
                }

             } while (buffer_array[buffer_index] == 0);
             printf_small("malloc passed for buffer%d",buffer_index);
             buffer_index++;
             break;

        case '-':
            printf_small("Enter a valid buffer number\n\r");
            buffer_num=getchar();
            putchar(buffer_num);
            buffer_result=0;
            buffer_result= buffer_result*10+(buffer_num - '0');
            printf_small("buffer number is %d\n\r",num_buffers);
            if(buffer_result >(num_buffers-1))
                printf_small("Enter a valid buffer number\n\r");
            else if(buffer_result==0)
                printf_small("Enter a valid buffer number other than 0\n\r");
            else
            {
                buffer_array[buffer_result]= NULL;
                printf_small("Buffer%d deleted",buffer_result);
                free(buffer_array[buffer_result]);
                buffer_shift(buffer_result);
                buffer_index--;
            }

            break;

       default:
             printf_small("No matching command characters\n\r");
        }
        }
    }

}



char * getstr()
{
	char *s=0;
	char c;
	int i=0;
	c = getchar();
	while( c !='\r' && c !='\0')
	{
		//(*(s+i)) = c;
		data_get[i]=c;
		//putchar1(data_get[i]);
		i++;
		c = getchar();
	}
	//*(s+i)='\0';
	 data_get[i]='\0';
	//putstr1(data_get);
	s=data_get;
	*(s+i)='\0';
	return s;
}

void putchar (char c)
{
//	while (!TI);				// compare asm code generated for these three lines
	while (TI == 0);
//	while ((SCON & 0x02) == 0);    // wait for TX ready, spin on TI
	SBUF = c;  	// load serial port with transmit value
	TI = 0;  	// clear TI flag
}


char getchar ()
{
//	char cc;
//    while (!RI);                // compare asm code generated for these three lines
//    while ((SCON & 0x01) == 0);  // wait for character to be received, spin on RI
	while (RI == 0);
	RI = 0;			// clear RI flag
	return SBUF;  	// return character from SBUF
}

void putstr (char *s)
{
	int i = 0;
	while (*(s+i)!='\0')
    {			// output characters until NULL found
		putchar(*(s+i));
		i++;
	}

}

char * buffer_create(unsigned int size)
{
   char * temp_buffer = malloc((size));
   printf_small("Buffer created\n\r");
   num_buffers++;
   return temp_buffer;
}

void buffer_shift(unsigned int buffer_result)
{
    unsigned int start= buffer_result;
    while(start < num_buffers)
    {
        buffer_array[start]=buffer_array[start+1];
        start++;
    }
    printf_small("Buffer shifted\n\r");
    printf_small("buffer number is %d\n\r",num_buffers);
    num_buffers--;
    printf_small("buffer number is %d\n\r",num_buffers);
}


