/*
 *	Problem: 3D Printed Statues
 */
 
#include <iostream>
#include <string>
#include <sstream>
#include <cmath>

using namespace std;

/*-----main-----*/
int main() {
	std::string line;
	getline(cin, line);

	int numStatues;
	std::istringstream(line) >> numStatues;

	double numDays = log2(numStatues);	
	int minNumDays = ceil(numDays);
	minNumDays += 1;
		
	std::cout << minNumDays;
	return 0;
}
