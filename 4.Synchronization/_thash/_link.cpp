
long int simple_long(long int *xp, long int y) 
{ 
        long int t = *xp + y; 
        *xp = t; 
      
        return t; 
} 

// int main()
// {
//     return 0;
// }