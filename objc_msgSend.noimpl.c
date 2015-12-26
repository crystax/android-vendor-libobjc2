#include <stdlib.h>
#include <stdio.h>
#include "objc/runtime.h"

id objc_msgSend(id self, SEL cmd, ... )
{
    (void)self;
    (void)cmd;
    fprintf(stderr, "%s is not implemented for this target!\n", __FUNCTION__);
    abort();
}

long double objc_msgSend_fpret(id self, SEL cmd, ... )
{
    (void)self;
    (void)cmd;
    fprintf(stderr, "%s is not implemented for this target!\n", __FUNCTION__);
    abort();
}

void objc_msgSend_stret(id self, SEL cmd, ... )
{
    (void)self;
    (void)cmd;
    fprintf(stderr, "%s is not implemented for this target!\n", __FUNCTION__);
    abort();
}
