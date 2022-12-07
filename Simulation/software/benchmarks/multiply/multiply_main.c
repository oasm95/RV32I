// See LICENSE for license details.

// *************************************************************************
// multiply filter bencmark
// -------------------------------------------------------------------------
//
// This benchmark tests the software multiply implemenation. The
// input data (and reference data) should be generated using the
// multiply_gendata.pl perl script and dumped to a file named
// dataset1.h

#include "../common/util.h"

#include "multiply.h"

//--------------------------------------------------------------------------
// Input/Reference Data

#include "dataset1.h"

//--------------------------------------------------------------------------
// Main

int main( )
{
    int i;
    int results_data[DATA_SIZE];
    int res;
    

    for (i = 0; i < DATA_SIZE; i++)
    {
        results_data[i] = multiply( input_data1[i], input_data2[i] );
    }
    puts("Esperado:");
    printarray(verify_data,DATA_SIZE);
    puts("Obtenido:");
    printarray(results_data,DATA_SIZE);
    // Check the results
    res = verify( DATA_SIZE, results_data, verify_data );
    puts((res)? "Fracaso":"Exito");
    return res;
}
