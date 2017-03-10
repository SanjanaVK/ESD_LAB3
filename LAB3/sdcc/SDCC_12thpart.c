

/*ESD S17 LAB3*/
/* Author: Sanjana Kalyanappagol*/
/*Date : March 10 2017*/

#include <at89c51ed2.h>  //also includes 8052.h and 8051.h
#include <mcs51reg.h>
#include <stdio.h>
#include <stdlib.h>
#include  <string.h>
//#include"main.h"
#include <malloc.h>

#define DEBUG            //Enables the debug port
#define XMEMORY 0XFFFF //Memory address for the debug port

#ifdef DEBUG

#define DEBUGPORT(x) dataout(x);  // generates a MOVX 0FFFFh,x where x is an 8-bit value
#else
#define DEBUGPORT(x) // empty statement, nothing passed on from the preprocessor to the compiler
#endif


#define HEAP_SIZE 2500   // size must be smaller than available XRAM
unsigned char  heap[HEAP_SIZE];
//xdata at 0xFFFF unsigned char DB;
xdata int *add;

char * getstr();
char getchar ();
void putchar (char c);
void putstr (char *s);
char data_get[50];
char * buffer_create(unsigned int size);
void buffer_shift(unsigned int buffer_result);
void buffer_add();
void buffer_delete();
void heap_report();
void buffer_free();
void buffer0_hex();
int atoi(char * a);
void init_hardware();
void dataout(int x);


unsigned int buffer_index,buffer_result,num_buffers,temp_result,result=0;
char * buffer_array[125];
unsigned int buffer_size[125];
unsigned int i,j,cmd_count,clear_count,new_result,num_elements,temp;
xdata char * buffer0;  // pointers
xdata char * buffer1;
xdata unsigned int *p;
char * size;
char * size1;
char * buffer_num;
char cmd;
unsigned int storage_count=0, command_count=0, char_received;





_sdcc_external_startup()  //This function changes the size of Internal RAM to 1KB
{
    AUXR |= 0x0C;
    return 0;
}

void main()
{


    init_hardware();   //Function to Initialise the hardware for Serial Communication
    buffer_index=2;
	num_buffers=2;

   init_dynamic_memory((MEMHEADER xdata *)heap, HEAP_SIZE); //allocates heap of size HEAP_SIZE

start:do
      {
        do
        {
          printf_tiny("Enter the buffer size between 32 and 2400 bytes divisible by 8\r\n");
          size= getstr();  //Obtain the size from the use
          printf_tiny("The buffer size you entered is : ");
	      putstr(size);
	      printf_tiny("\r\n");
	      storage_count=0;
	      command_count=0;
	      i=0;
	      while(*(size+i)!='\0') //Check if the size is in the form of numbers
          {
            if(*(size+i)>= '0' && *(size+i)<='9')
            {
                i++;
                continue;
            }
            else
                {
                    printf_tiny("Please enter a number\r\n"); //else prompt the user to enter a number
                    goto start;
                }
          }
	      result=0;
	      result=atoi(size); //Converts ascii to integer
          printf_tiny("The buffer size integer value is %d\r\n",result);

       }while(((result%8)!=0)||(result<32)||(result>2400)); //Check if the size is divisible by 8 and is between 32 and 2400

        if ((buffer0 = malloc((result))) == 0)  //allocate buffer0
        {
          printf_tiny("malloc buffer0 failed, Please enter a smaller size\n\r");
          free(buffer0); //free buffer0 if malloc to buffer0 fails
        }

	    if ((buffer1 = malloc((result))) == 0)         //allocate buffer1
	    {
		  printf_tiny("malloc buffer1 failed, Please enter a smaller size\n\r");
		  free (buffer1);
		  free (buffer0);  // if buffer1 malloc fails, free buffer 0 and buffer1
	    }

	} while ((buffer0 == 0) || (buffer1 == 0)); //If fails then prompt the user to enter a new size

	printf_tiny("malloc passed for both buffer0 and buffer1\n\r");
	buffer_array[0]=buffer0; //alloacte buffers in buffer_array and their sizes in buffer_size
	buffer_array[1]=buffer1;
	buffer_size[0]=result;
	buffer_size[1]=result;
	cmd_count=0;

	while(1)
    {
        printf("\r\n/**********************MENU************************/\r\n");
        printf_tiny("The valid command characters with functions are:\r\n");
        printf_tiny(" '+' command character ---------- Buffer Add\r\n");
        printf_tiny(" '-' command character ---------- Buffer Delete\r\n");
        printf_tiny(" '?' command character ---------- Heap Report\r\n");
        printf_tiny(" '=' command character ---------- Buffer0 Contents in Hex\r\n");
        printf_tiny(" '@' command character ---------- Freeing allocations of all buffers\r\n");
        printf_tiny("\n\rEnter a character\n\r");    //prompt the user to enter a character
        cmd=getchar(); //obtain the character
	    printf_tiny("The character you entered is : ");
	    putchar(cmd);
	    printf_tiny("\r\n");
        if((cmd >='a' && cmd <='z') || (cmd >='0' && cmd <='9')) //Check if it is a storage character
        {
            printf_tiny("It is a storage character\n\r");
            if(cmd_count>(buffer_size[0]-1)) //if buffer0 full, then only display the storage character
            {
                 printf_tiny("Buffer0 is full, The character you entered will not be stored in the buffer\r\n");
                 printf_tiny("The character you entered is: ");
                 putchar(cmd);
                 printf_tiny("\r\n");
            }
            else
            {
                *(buffer0+cmd_count)=cmd;  //if buffer0 not full, store the character in the buffer0
                 cmd_count++;
                 storage_count++; //keep a count of storage characters received
            }
            char_received++; //keep  count of total number of character received since last '?' command character
        }
        else
        {

            printf_tiny("it is a command character\n\r"); //if not storage counter, it is a command character
            command_count++; //keep a count of command characters received
            char_received++;
            switch(cmd)       //switch case for valid command characters defined with functions
        {
        case '+':                //if '+' then add buffer

             DEBUGPORT(6)          //writes a value given in the external memory if DEBUG is defined
             buffer_add();         //function to add buffer
             break;

        case '-':

            buffer_delete();      //if -' then delete buffer
            break;

        case '?':

            heap_report();        //if '?' then provide a heap report
            break;

        case '=':
            buffer0_hex();     //if '=' then print hex values in buffer0
            break;

        case '@':
            buffer_free();      //if '@' then free the memory allocated to the buffers
            goto start;
            break;

       default:
             printf_tiny("No matching command characters\n\r");
        }
        }
    }

}

void init_hardware()
{
    TMOD=0x20; //use Timer 1, mode 2
    TH1=0xFA; //4800 baud rate
    SCON=0x50;
    TR1=1;   //Start the Timer
    TI=1; //Set TI flag to 1
}

void dataout(int x)
{
   add= 0xFFFF;
   *add = x;
   printf_tiny("Debugport executed\r\n");
}
/*This function converts ascii to integer*/
int atoi(char *a)
{
    i=0;
    temp_result=0;
    while(*(a+i)!='\0')
    {
        temp_result = temp_result * 10 + ( *(a+i)- '0' );
        i++;
    }
    return temp_result;
}

/*This function enables to get string value using getchar*/
char * getstr()
{
	char *s=0;
	char c;
	int i=0;
	c = getchar();
	while( c !='\r' && c !='\0') //get characters till null found
	{
		data_get[i]=c;
		i++;
		c = getchar();
	}
	 data_get[i]='\0';
	s=data_get;
	*(s+i)='\0';
	return s;
}

/*This function is to print a character to the terminal using RS232*/
void putchar (char c)
{
	while (TI == 0); // wait for TX ready, spin on TI
    SBUF = c;  	// load serial port with transmit value
	TI = 0;  	// clear TI flag
}

/*This function is to get a character from the terminal using RS232*/
char getchar ()
{
    while (RI == 0); // wait for character to be received, spin on RI
	RI = 0;			// clear RI flag
	return SBUF;  	// return character from SBUF
}

/*This function is to print a string using putchar*/
void putstr (char *s)
{
	int i = 0;
	while (*(s+i)!='\0') //output characters until NULL found
    {
		putchar(*(s+i));
		i++;
	}

}

/*This function is used for the creating new buffers during buffer add*/
char * buffer_create(unsigned int size)
{
   char * temp_buffer = malloc((size)); //allocation of new buffer
   printf_tiny("Buffer created\n\r");
   num_buffers++;
   return temp_buffer;
}

/*This function is to shift buffers after a buffer is deleted*/
void buffer_shift(unsigned int buffer_result)
{
    unsigned int start= buffer_result;
    while(start < (num_buffers-1)) //Keep deleting a buffer till maximum number of buffers present
    {
        buffer_array[start]=buffer_array[start+1];
        buffer_size[start]=buffer_size[start+1];
        start++;
    }
    printf_tiny("Buffer shifted\n\r");
    num_buffers--;
}

/*This function is to add buffers when '+' command character is given by the user*/
void buffer_add()
{

     do
            {
                do
                {
       back:    printf_tiny("Please enter a new buffer size between 20 and 400\n\r");
                size1= getstr(); //obtain the new buffer size
                printf_tiny("The buffer size you entered is: ");
	            putstr(size1);
	            printf_tiny("\r\n");
	            i=0;
	            new_result=0;
	            while(*(size1+i)!='\0') //Check if the size is a number
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
                new_result=atoi(size1); //Convert ascii size to an integer
                printf_tiny("The buffer size integer value is %d\r\n",new_result);
                }while(new_result<20 || new_result>400); //Check if the size is between 20 and 400

                buffer_array[buffer_index]=buffer_create(new_result);//Create a new buffer

                if ((buffer_array[buffer_index]) == 0)  //allocate new buffer
                {
                    printf_tiny("malloc buffer%d failed, Please enter a smaller size\n\r",buffer_index);
                    free(buffer_array[buffer_index]);
                }

             } while (buffer_array[buffer_index] == 0); //if fails then ask the user to give the size again
             printf_tiny("malloc passed for buffer%d\n\r",buffer_index);
             buffer_size[buffer_index]=new_result;
             buffer_index++;
}

/*This function deletes a buffer*/
void buffer_delete()
{
            printf_tiny("Enter a valid buffer number\n\r");
   back:    buffer_num=getstr();//get the buffer number from the user
            printf_tiny("The buffer number you entered is: ");
            putstr(buffer_num);
            printf_tiny("\n\r");
            buffer_result=0;
            i=0;
            while(*(buffer_num+i)!='\0') //Convert ascii to integer
                {
                    buffer_result= buffer_result*10+(*(buffer_num+i) - '0');
                    i++;
                }
            if(buffer_result >(num_buffers-1)) //check if the buffer with that number does not exist
            {
                printf_tiny("Enter a valid buffer number\n\r");
                goto back;
            }
            else if(buffer_result==0) //check if the user is trying to delete buffer0
            {
                printf_tiny("Enter a valid buffer number other than 0\n\r");
                goto back;
            }
            else
            {
                printf_tiny("Buffer%d deleted\n\r",buffer_result);
                free(buffer_array[buffer_result]);
                buffer_array[buffer_result]= NULL;
                buffer_shift(buffer_result);
                buffer_index--;
            }
}

/*This function provides a heap report of all buffers*/
void heap_report()
{
    printf_tiny("Number of storage characters are %d\r\n",storage_count);
    printf_tiny("Number of command characters are %d\r\n",command_count);
    printf_tiny("There are %d buffers in the heap\r\n",num_buffers);
    printf_tiny("The buffers currently in heap are:\r\n");
    for(i=0;i<num_buffers;i++)
    {
      printf_tiny("[%d] buffer%d\r\n",(i+1),i);
    }
    printf_tiny("Report of each buffer in the heap:\r\n");
    printf_tiny("\r\n");
    for(i=0;i<num_buffers;i++)
    {
      num_elements=0;
      printf_tiny("Buffer%d report:\r\n",i);
      printf_tiny("Size of Buffer%d is %d\r\n",i,buffer_size[i]);
      printf_tiny("Starting address of Buffer%d is %d\r\n",i,(unsigned int)buffer_array[i]);
      printf_tiny("Ending address of Buffer%d is %d\r\n",i,(((unsigned int)buffer_array[i]) + buffer_size[i]));

      while(*(buffer_array[i]+num_elements)!='\0') //Calculate number of elements in each buffer
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
        while(clear_count<storage_count) //Empty buffer0
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
         printf_tiny("*******************************************************************\n\r");
    }
    printf_tiny("Number of characters received since last '?' command is %d\r\n",char_received);
    char_received=0;
}

/*This function displays values in buffer0 in hex format*/
void buffer0_hex()
{
    printf_small("Hex values in Buffer 0 are:\r\n");
    i=0;
    if(storage_count==0)//check if buffer0 has storage characters
    printf_tiny("There are no storage characters in Buffer0\r\n");
    while(i<storage_count) //keep printing till the last storage character
    {
        if((i%16)==0)
        {
            printf_small("\r\n");
            printf("%04X:",(unsigned int)(buffer0+i)); //print the address of the 1st byte of 16 bytes in each line

        }
            printf("%02X\t",(*(buffer0+i))); //print the character in buffer0
            i++;
    }

    printf_tiny("\r\n");
}

/*This function is used for freeing the buffers in the heap*/
void buffer_free()
{
    for(i=0;i<num_buffers;i++) //free all the buffers created
    {
        free(buffer_array[i]);
        buffer_array[i]='\0';
    }
    free(buffer0);
    free(buffer1);
    printf_tiny("The space allocated to buffers in the heap is freed\n\r");
    printf_tiny("\n\r");

}

