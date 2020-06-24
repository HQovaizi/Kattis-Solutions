/*
 *	Problem: "Aaah!"
 */
 
#include <iostream>
#include <string>

using namespace std;

/*-----main-----*/
int main(void) {
	string jon;
	string doc;
	
	getline(cin, jon);
	getline(cin, doc);
		
	if ( jon.length() < doc.length() )
		cout << "no" << endl;
	else
		cout << "go" << endl;

	return 0;
}
