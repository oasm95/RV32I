// See LICENSE for license details.

//**************************************************************************
// Median filter bencmark
//--------------------------------------------------------------------------
//
// This benchmark performs a 1D three element median filter. The
// input data (and reference data) should be generated using the
// median_gendata.pl perl script and dumped to a file named
// dataset1.h.

#include "../common/util.h"

#include "median.h"
#include <stdio.h>

//--------------------------------------------------------------------------
// Input/Reference Data

#include "dataset1.h"

//--------------------------------------------------------------------------
// Main

int main()
{
    int res;
    int results_data[DATA_SIZE];
    
    puts("Data inicial:");
    printarray(input_data,DATA_SIZE);
    puts("Data Esperada:");
    printarray(verify_data,DATA_SIZE);
    // Do the filter
    median( DATA_SIZE, input_data, results_data );
    puts("Data Obtenida:");
    printarray(results_data,DATA_SIZE);

    // Check the results
    res = verify( DATA_SIZE, results_data, verify_data );
    puts((res)? "Fracaso":"Exito");
    
    return res;
}
