#include <iostream>
void quickSort(int *array, int low, int high)
{
int i = low;
int j = high;
int pivot = array[(i + j) / 2];
int temp;
while (i <= j)
{
while (array[i] < pivot)
i++;
while (array[j] > pivot)
j--;
if (i <= j)
{
temp = array[i];
array[i] = array[j];
array[j] = temp;
i++;
j--;
}
}
if (j > low)
quickSort(array, low, j);
if (i < high)
quickSort(array, i, high);
}
int main()
{
int count = 10000000;
int array[count] ;
for(int i = 0; i<count;i++)
array[i]=count-i;
int n = sizeof(array)/sizeof(array[0]);
quickSort(array, 0, n);
return 0;
}
