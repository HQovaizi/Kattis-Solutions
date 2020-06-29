'''
 *
 *	Problem: "Roaming Romans"
 *	Problem ID: "romans"
 *	https://open.kattis.com/problems/romans
 *
 *	Solution: Python
'''

#-----main-----#
MILES_TO_PACES = (1000) * (5280.0 / 4854)

engMiles = float( input() )
romanPaces = engMiles * MILES_TO_PACES

pacesRounded = round(romanPaces)
print(pacesRounded)