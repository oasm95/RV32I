#include "Wnanoprintf.h"

#define NANOPRINTF_USE_FIELD_WIDTH_FORMAT_SPECIFIERS 0
#define NANOPRINTF_USE_PRECISION_FORMAT_SPECIFIERS 0
#define NANOPRINTF_USE_LARGE_FORMAT_SPECIFIERS 0
#define NANOPRINTF_USE_FLOAT_FORMAT_SPECIFIERS 0
#define NANOPRINTF_USE_BINARY_FORMAT_SPECIFIERS 0
#define NANOPRINTF_USE_WRITEBACK_FORMAT_SPECIFIERS 0

// Compile nanoprintf in this translation unit.
#define NANOPRINTF_IMPLEMENTATION
#include "nanoprintf.h"

#define BUFFERSZ 4096

static char pbuffer[BUFFERSZ];
static int freespace = BUFFERSZ;
static char *bufferptr = pbuffer;

int Wnprint(char const *fmt, ...)
{
    if (freespace<=0)
        return 0;
    va_list val;
    va_start(val, fmt);
    int const rv = npf_vsnprintf(bufferptr, freespace, fmt, val);
    freespace = freespace-rv;
    bufferptr = bufferptr+rv;
    va_end(val);
    return rv;
}

int WngetMaxsize()
{
    return BUFFERSZ;
}

int Wngetwrittensize()
{
    return BUFFERSZ - freespace;
}

char *Wngetbuffptr()
{
    return pbuffer;
}