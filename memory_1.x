MEMORY
{
   NS_CODE (rx)     : ORIGIN = 0x00000000, LENGTH = 8M
   S_CODE_BOOT (rx) : ORIGIN = 0x10000000, LENGTH = 8M
   RAM   (rwx) : ORIGIN = 0x20000000, LENGTH = 8M
}

/* Entry Point */
ENTRY(Reset_Handler)



SECTIONS
{

    .text : 
    {
        KEEP(*(.isr_vector))
        *(.text)
        *(.data)
        *(.bss) 
    } > S_CODE_BOOT
    /* Set stack top to end of S_CODE_BOOT. */
    __StackTop = ORIGIN(S_CODE_BOOT) + LENGTH(S_CODE_BOOT);
    

}
