/*
 *	Problem: "Jack-O'-Lantern Juxtaposition"
 */
 
#include <iostream>

using namespace std;

/*-----main-----*/
int main(void) {

	int numEyes, numNose, numMouth;
	cin >> numEyes >> numNose >> numMouth;
	
	int result = numEyes * numNose * numMouth;
	cout << result;
	
	return 0;
} // end main