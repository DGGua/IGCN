#include <hls_stream.h>
using namespace std;

#define MAX_NODES 1000000
#define MAX_ISLANDS 15
#define P1 16

typedef struct island
{
    int size;
    int islands[MAX_ISLANDS];
} island;

int node_degree[MAX_NODES];
bool checked[MAX_NODES];
int node_list[MAX_NODES];
int node_list_buffer[MAX_NODES];
int node_list_tail = 0;
int node_list_buffer_tail = 0;
island islands_list[MAX_NODES];
int hub_buffer[MAX_NODES];
int thtmp;
std::vector<int[]> islands;
bool *visited;
int NODE_SIZE;

void detect_hub_factor(hls::stream<int> &instream, hls::stream<int> &outstream, int *adj_matrix[])
{
    int data = 0;
    while (data != -1)
    {
        data = instream.read();
        int add = 0;

        
        if (add > thtmp)
        {
            outstream.write(data)
        }
    }
}
void detect_hub(int *adj_matrix)
{
    hls::stream<int> input_streams[P1];
    hls::stream<int> output_streams[P1];
    // parallel
    for (int p = 0; p < P1; p++)
    {
        detect_hub_factor(input_streams[p], output_streams[p]);
    }
    for (int i = 0, factor_index = 0; i < node_list_tail; i++, factor_index = (factor_index + 1) % P1)
    {
        input_streams[factor_index].write(node_list[i]);
    }
    for (int p = 0; p < P1; p++)
    {
        input_streams[p].write(-1);
    }

    int count = 0;
    while (count < P1)
    {
        for (int p = 0; p < P1; p++)
        {
            int head;
            if (output_streams[p].read_nb(head))
            {
                if (head == -1)
                {
                    count++;
                }
                else
                {
                    // TODO
                }
            }
        }
    }
}
void task_assign() {}
void TP_BFS() {}
int Decay(int th)
{
    int thnext = th - 1;
    return thnext;
}
int *island_locator(int *adj_matrix, int node_size, int th0, int cmax)
{
    thtmp = th0;
    node_list_tail = node_size;
    NODE_SIZE = node_size;
    while (node_list_tail > 0)
    {
        detect_hub(adj_matrix);
        task_assign();
        TP_BFS();
        thtmp = Decay(thtmp);
    }
}
