
//#include <mcs51/8051.h>
// Last Revision:  October 4, 2009
#include <at89c51ed2.h>  //also includes 8052.h and 8051.h
#include <mcs51reg.h>
//#include <8052.h>   // also included in at89c51ed2.h
#include <stdio.h>
#include <stdlib.h>
//#include <malloc.h>



volatile int gg;  // global


#define HEAP_SIZE 2500   // size must be smaller than available XRAM
unsigned char  heap[HEAP_SIZE];

char * getstr();
char getchar ();
void putchar (char c);
void putstr (char *s);
char data_get[50];


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
    unsigned int i,result=0;

	 xdata char * buffer0;  // pointers
	 xdata char * buffer1;
	char * size;

	//char message[100]="Enter the buffer size between 32 and 2400\r";
//_init_hardware();

   //_sdcc_external_startup();

   //AUXR |= 0x0C;
//    TMOD=0x20; //use Timer 1, mode 2
//    TH1=0xFA; //4800 baud rate
//    SCON=0x50;
//    TR1=1;
//    TI=1;
//	  RI=0;
//	 unsigned zz;  // locals
//   unsigned int i,result=0;

	//putstr1(message);
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

        if ((buffer0 = malloc((unsigned int)(result))) == 0)  //allocate buffer0
        {
        printf_small("malloc buffer0 failed, Please enter a smaller size\n\r");
        free(buffer0);
        }

	    if ((buffer1 = malloc((unsigned int)(result))) == 0)         //allocate buffer1
	    {
		printf ("malloc buffer1 failed, Please enter a smaller size\n\r");
		free (buffer1);
		free (buffer0);  // if buffer1 malloc fails, free buffer 0
	    }

	} while ((buffer0 == 0) || (buffer1 == 0));

	printf ("malloc passed\n\r");

//    if(result >32 && result<2400)
//    {
//        if(result%8==0)
//        {
//            continue;
//        }
//        else
//        {
//            printf("Please Enter a buffer size divisible by 8\r\n")
//            goto loop;
//        }
//
//    }
//    else
//    {
//        printf("Please enter the size between 32 and 2400 bytes\r\n")
//        goto loop;
//    }


// printf ("string1 %s\n\r");	//note: the missing parameter is not flagged as an error
// printf ("string2 %s\n\r", "parameter");


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

	//putchar1(*s);
	//putchar('\n');
	//return i+1;
}
