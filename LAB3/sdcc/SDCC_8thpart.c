
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

unsigned int buffer_index,buffer_result,num_buffers,result=0;
char * buffer_array[125];
unsigned int buffer_size[125];




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

	 unsigned int i,j,cmd_count,clear_count,new_result,num_elements,temp;
	 xdata char * buffer0;  // pointers
	 xdata char * buffer1;

	char * size;
	char * size1;
	char * buffer_num;
	char cmd;
	unsigned int storage_count=0, command_count=0, char_received;
    buffer_index=2;
	num_buffers=2;


	init_dynamic_memory((MEMHEADER xdata *)heap, HEAP_SIZE);
start:   do
    {
        do
    {
    loop: printf_tiny("Enter the buffer size between 32 and 2400 bytes divisible by 8\r\n");
        size= getstr();
        printf_tiny("The buffer size you entered is : ");
	    putstr(size);
	    printf_tiny("\r\n");
	    storage_count=0;
	    command_count=0;
	    i=0;
	    while(*(size+i)!='\0')
        {
            if(*(size+i)>= '0' && *(size+i)<='9')
            {
                i++;
                continue;
            }
            else
                {
                    printf_tiny("Please enter a number\r\n");
                    goto loop;
                }
        }
//	zz = 1;
	    i=0;
	    result=0;
	    while(*(size+i)!='\0')
        {
        result = result * 10 + ( *(size+i)- '0' );
        i++;
        }
        printf_tiny("The buffer size integer value is %d\r\n",result);

    }while(((result%8)!=0)||(result<32)||(result>2400));

        if ((buffer0 = malloc((result))) == 0)  //allocate buffer0
        {
        printf_tiny("malloc buffer0 failed, Please enter a smaller size\n\r");
        free(buffer0);
        }

	    if ((buffer1 = malloc((result))) == 0)         //allocate buffer1
	    {
		printf_tiny("malloc buffer1 failed, Please enter a smaller size\n\r");
		free (buffer1);
		free (buffer0);  // if buffer1 malloc fails, free buffer 0
	    }

	} while ((buffer0 == 0) || (buffer1 == 0));

	printf_tiny("malloc passed for both buffer0 and buffer1\n\r");
	buffer_array[0]=buffer0;
	buffer_array[1]=buffer1;
	buffer_size[0]=result;
	buffer_size[1]=result;
	cmd_count=0;

	while(1)
    {
        printf_tiny("\n\rEnter a character\n\r");
	    cmd=getchar();
	    printf_tiny("The character you entered is : ");
	    putchar(cmd);
	    printf_tiny("\r\n");
        if((cmd >='a' && cmd <='z') || (cmd >='0' && cmd <='9'))
        {
            printf_tiny("It is a storage character\n\r");
            if(cmd_count>(buffer_size[0]-1))
            {
                 printf_tiny("Buffer0 is full, The character you entered will not be stored in the buffer\r\n");
                 printf_tiny("The character you entered is: ");
                 putchar(cmd);
                 printf_tiny("\r\n");
            }
            else
            {
                *(buffer0+cmd_count)=cmd;
                 cmd_count++;
                 storage_count++;
            }
            char_received++;
        }
        else
        {

            printf_tiny("it is a command character\n\r");
            command_count++;
            char_received++;
            switch(cmd)
        {
        case '+':
            do
            {
                do
                {
       back:    printf_tiny("Please enter a new buffer size between 20 and 400\n\r");
                size1= getstr();
                printf_tiny("The buffer size you entered is: ");
	            putstr(size1);
	            printf_tiny("\r\n");
	            i=0;
	            new_result=0;
	            while(*(size1+i)!='\0')
                {
                   if(*(size1+i)>= '0' && *(size1+i)<='9')
                   {
                       i++;
                       continue;
                   }
                   else

                    {
                    printf_tiny("Please enter a number\r\n");
                    goto back;
                    }
                }
                i=0;
                while(*(size1+i)!='\0')
                {
                    new_result = new_result * 10 + ( *(size1+i)- '0' );
                    i++;
                }
                    printf_tiny("The buffer size integer value is %d\r\n",new_result);
                }while(new_result<20 || new_result>400);

                    buffer_array[buffer_index]=buffer_create(new_result);
                    if ((buffer_array[buffer_index]) == 0)  //allocate buffer0
                {
                    printf_tiny("malloc buffer%d failed, Please enter a smaller size\n\r",buffer_index);
                    free(buffer_array[buffer_index]);
                }

             } while (buffer_array[buffer_index] == 0);
             printf_tiny("malloc passed for buffer%d\n\r",buffer_index);
             buffer_size[buffer_index]=new_result;
             buffer_index++;
             break;

        case '-':
            printf_tiny("Enter a valid buffer number\n\r");
            buffer_num=getstr();
            printf_tiny("The buffer number you entered is: ");
            putstr(buffer_num);
            printf_tiny("\n\r");
            buffer_result=0;
            i=0;
            while(*(buffer_num+i)!='\0')
                {
                    buffer_result= buffer_result*10+(*(buffer_num+i) - '0');
                    i++;
                }
            if(buffer_result >(num_buffers-1))
                printf_tiny("Enter a valid buffer number\n\r");
            else if(buffer_result==0)
                printf_tiny("Enter a valid buffer number other than 0\n\r");
            else
            {
                printf_tiny("Buffer%d deleted\n\r",buffer_result);
                free(buffer_array[buffer_result]);
                buffer_array[buffer_result]= NULL;
                buffer_shift(buffer_result);
                buffer_index--;
            }

            break;

        case '?':
            printf_tiny("Number of storage characters are %d\r\n",storage_count);
            printf_tiny("Number of command characters are %d\r\n",command_count);
            printf_tiny("There are %d buffers in the heap\r\n",num_buffers);
            printf_tiny("The buffers currently in heap are:\r\n");
            for(i=0;i<num_buffers;i++)
            {
                printf_tiny("[%d] buffer%d\r\n",(i+1),i);
            }
            printf_tiny("Report of each buffer in the heap\r\n");
            for(i=0;i<num_buffers;i++)
            {
             num_elements=0;
              printf_tiny("Buffer%d report:\r\n",i);
              printf_tiny("Size of Buffer%d is %d\r\n",i,buffer_size[i]);
              printf_tiny("Starting address of Buffer%d is %d\r\n",i,(unsigned int)buffer_array[i]);
              printf_tiny("Ending address of Buffer%d is %d\r\n",i,(((unsigned int)buffer_array[i]) + buffer_size[i]));
              while(*(buffer_array[i]+num_elements)!='\0')
              {
                  num_elements++;
              }
              printf_tiny("Free space in Buffer%d is %d\r\n",i,(unsigned int)(buffer_size[i] - num_elements));
              if(i==0)
              {
                  clear_count=0;
                  printf_tiny("Number of storage characters in buffer%d are %d\r\n",i,storage_count);
                  if(storage_count!=0)
                  {
                      printf_tiny("The storage characters are:\r\n");
                  }
                  while(clear_count<storage_count)
                  {
                          temp=0;
                          do
                          {
                            putchar(*(buffer0+clear_count));
                           *(buffer0+clear_count)='\0';
                             clear_count++;
                             temp++;
                          }while(temp<32);
                          printf_tiny("\r\n");
                  }
                  if(storage_count!=0)
                  printf_tiny("Buffer0 is emptied\r\n");
                  else
                  printf_tiny("Buffer0 is already empty\r\n");
                  storage_count=0;
                  cmd_count=0;
              }

              else
                printf_tiny("There are no storage characters in buffer%d\r\n",i);
            }
            printf_tiny("Number of characters received since last '?' command is %d\r\n",char_received);
            char_received=0;

            break;

        case '=':
            printf_small("Hex values in Buffer 0 are:\r\n");
            i=0;
            if(storage_count==0)
                printf_tiny("There are no storage characters in Buffer0\r\n");
                while(i<storage_count)
            {
                if((i%16)==0)
                {
                    printf_small("\r\n");
                    printf("%04X:",(unsigned int)(buffer0+i));

                }
                printf("%02X\t",(*(buffer0+i)));
                i++;
            }

            printf_tiny("\r\n");
            break;

        case '@':
            for(i=0;i<num_buffers;i++)
            {
                free(buffer_array[i]);
                buffer_array[i]='\0';

            }
            free(buffer0);
            free(buffer1);
            printf_tiny("The space allocated to buffers in the heap is freed\n\r");
            printf_tiny("\n\r");
            goto start;
            break;

       default:
             printf_tiny("No matching command characters\n\r");
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
   printf_tiny("Buffer created\n\r");
   num_buffers++;
   return temp_buffer;
}

void buffer_shift(unsigned int buffer_result)
{
    unsigned int start= buffer_result;
    while(start < (num_buffers-1))
    {
        buffer_array[start]=buffer_array[start+1];
        buffer_size[start]=buffer_size[start+1];
        start++;
    }
    printf_tiny("Buffer shifted\n\r");
    num_buffers--;
}


