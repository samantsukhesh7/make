#include <iostream>

using namespace std;
int main(){
	#ifdef MAC
		cout << 1;
	#else
		cout << 0;
	#endif
	return 0;
}
