#include <malloc.h>
#include <memory.h>
#include "np"
void t(int* arr, int lenth, int* output) {
t_label1:
  for (int i = 0; i < lenth; i++)
    output[i] = arr[i] * 2;
}

void IGCN(int* test, int size, int* output) {
  int testarr[50];
  int outputarr[50];
  for (int i = 0; i < size; i++) {
    testarr[i] = test[i];
  }
IGCN_label0:
  for (int i = 0; i < 10; i++) {
    t(testarr + i * 5, (i + 1) * 5, outputarr);
  }
  for (int i = 0; i < size; i++) {
    output[i] = outputarr[i];
  }

  // island_locator()
}
