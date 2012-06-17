#include "atlas_misc.h"
#include "atlas_threads.h"
void ATL_thread_exit(void *retval)
{
#ifdef ATL_WINTHREADS
   ExitThread((DWORD)(retval));
#else
   pthread_exit(retval);
#endif
}
