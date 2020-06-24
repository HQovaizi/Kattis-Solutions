/*
 *	Problem: "A Real Challenge"
 */
 
#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

/*-----main-----*/
int main(void) {
	long int area;
	cin >> area;
	
	double perimeter = (sqrt(area) * 4);
	cout << setprecision(7) << perimeter << endl;

	return 0;
}
