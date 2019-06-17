# Generates text varieties
# (c) 2019 anya michaelsen, ben c. logsdon, ralph morrison

# establishes that we will be working with polynomials
# in two variables, x and y, with rational coefficients
var('x')
var('y')
R = QQ[x,y]

scurve(hscale, vscale) = (35.937*x^3)/hscale^3 + (3.3*y)/vscale - (35.937*x*y^2)/(hscale*vscale^2) - (35.937*y^3)/vscale^3
loopy(hoffset, voffset) = -0.015625*((-hoffset + x)^2 + (-voffset + y)^2) + (-0.25*(-hoffset + x) + (-hoffset + x)^2 + (-voffset + y)^2)^2

# we store the equations for each letter in a dictionary called 'reps'
reps = {}

# method for setting the polynomial
# corresponding to a given letter
def set_rep(letter, poly):
    reps[letter] = poly

# method for retreiving the polynomial of a given
# character with and optional shift parameter that
# replaces 'x' with 'x-shift' in the polynomial
# to translate where the letter is plotted
# corresponding to its location in the string
def get_rep(letter, shift = 0):
    return reps[letter].substitute(x==(x-shift))

# populate the reps dictionary for each letter 
set_rep("A", (0.091 + 1.05*x + 2.626*x^2 - 0.512*y - 2.56*x*y + 0.706*y^2)*(0.091 - 1.05*x + 2.626*x^2 - 0.512*y + 2.56*x*y + 0.706*y^2)*(-0.0025 + x^2 + 1.34*y^2))
set_rep("B", (-0.015625*((0.2 + x)^2 + (-0.25 + y)^2) + (-0.25*(0.2 + x) + (0.2 + x)^2 + (-0.25 + y)^2)^2)*(0.0735 + 0.836*x + 2.12*x^2 - 0.00003*y + 0.029*x*y + 0.068*y^2)* (-0.015625*((0.2 + x)^2 + (0.15 + y)^2) + (-0.25*(0.2 + x) + (0.2 + x)^2 + (0.15 + y)^2)^2))
set_rep("C", (-0.8 + x)*(-2 - 10*(0.2 + x))*(-(0.2 + x)^2 + 2*y^2) - 100*(-0.75*(0.2 + x) + (0.2 + x)^2 + 2*y^2)^2)
set_rep("D", (0.0585 + 0.659*x + 1.69*x^2 + 0.0038*y + 0.0215*x*y + 0.054*y^2)*((-2 - 10*(0.2 - x))*(-0.8 - x)*(-(0.2 - x)^2 + 2*y^2) - 100*(-0.75*(0.2 - x) + (0.2 - x)^2 + 2*y^2)^2))
set_rep("E", (0.225 + 1.58*x + 2.64*x^2 + 0.0757*y^2)*(0.233 + 0.0355*x^2 - 1.18*y + 1.475*y^2)*(0.233 + 0.0355*x^2 + 1.18*y + 1.475*y^2)* (-0.0025 + 0.0134*x + 0.1*x^2 - 0.0027*y + 0.025*x*y + 1.858*y^2))
set_rep("F", (0.225 + 1.58*x + 2.64*x^2 + 0.0757*y^2)*(0.233 + 0.0355*x^2 - 1.18*y + 1.475*y^2)*(-0.0025 + 0.0134*x + 0.1*x^2 - 0.0027*y + 0.025*x*y + 1.858*y^2))
set_rep("G", (0.0605 - 0.61*x + 1.53*x^2 + 0.027*y + 0.09*y^2)*(0.00006 - 0.018*x + 0.09*x^2 + 1.37*y^2)*((-0.8 + x)*(-2 - 10*(0.2 + x))*(-(0.2 + x)^2 + 2*y^2) - 100*(-0.75*(0.2 + x) + (0.2 + x)^2 + 2*y^2)^2))
set_rep("H", (0.2176 - 1.632*x + 2.73*x^2 + 0.16*y^2)*(0.2176 + 1.632*x + 2.73*x^2 + 0.16*y^2)*(-0.009 + 0.196*x^2 + 1.476*y^2))
set_rep("I", (-0.0077 + 1.33*x^2 + 0.093*y^2)*(0.13 - 0.0133*x + 0.027*x^2 + 0.83*y - 0.04*x*y + 1.3*y^2)*(0.13 - 0.0133*x + 0.027*x^2 - 0.83*y + 0.04*x*y + 1.3*y^2))
set_rep("J", (-0.0054 + 2*x^2 - 0.0044*y + 0.044*y^2)*(0.233 + 0.03*x^2 - 1.177*y + 1.47*y^2)*(0.132 + 0.6*x + 0.728*x^2 + 0.9*y + 1.92*x*y + 1.528*y^2))
set_rep("K", (0.089 + 1.066*x + 2.66*x^2 + 0.105*y^2)*(0.047 + 0.512*x + 1.37*x^2 - 0.548*y - 2.56*x*y + 1.37*y^2)*(0.047 + 0.512*x + 1.37*x^2 + 0.548*y + 2.56*x*y + 1.37*y^2))
set_rep("L", (0.05 + 0.89*x + 2.23*x^2 - 0.03*y + 0.274*y^2)*(0.09 - 0.0156*x + 0.156*x^2 + 0.69*y + 1.156*y^2))
set_rep("M", (0.165 - 1.09*x + 1.7*x^2 - 0.005*y + 0.015*x*y + 0.07*y^2)*(0.165 + 1.09*x + 1.7*x^2 + 0.005*y + 0.015*x*y + 0.07*y^2)* (0.015 + 0.1*x + 1.25*x^2 - 0.35*y - 2.5*x*y + 1.9*y^2)*(0.015 - 0.1*x + 1.25*x^2 - 0.35*y + 2.5*x*y + 1.9*y^2))
set_rep("N", (0.09 - 0.8*x + 1.69*x^2 + 0.005*y - 0.02*x*y + 0.06*y^2)*(0.09 + 0.8*x + 1.69*x^2 + 0.005*y + 0.02*x*y + 0.06*y^2)* (-0.015 + 0.003*x + 1.75*x^2 + 0.0015*y + 2.45*x*y + 1.03*y^2))
set_rep("O", (-0.16000000000000003 + x^2 + y^2)*(-0.12249999999999998 + x^2 + y^2))
set_rep("P", (-0.015625*((0.2 + x)^2 + (-0.25 + y)^2) + (-0.25*(0.2 + x) + (0.2 + x)^2 + (-0.25 + y)^2)^2)*(0.0735 + 0.836*x + 2.12*x^2 - 0.00003*y + 0.029*x*y + 0.068*y^2))
set_rep("Q", (-0.16000000000000003 + x^2 + y^2)*(-0.16000000000000003 + (0.067 + x)^2 + y^2)*(0.0467 - 0.178*x + 1.57*x^2 + 0.178*y + 2.56*x*y + 1.57*y^2))
set_rep("R", (-0.015625*((0.2 + x)^2 + (-0.25 + y)^2) + (-0.25*(0.2 + x) + (0.2 + x)^2 + (-0.25 + y)^2)^2)*(0.0735 + 0.836*x + 2.12*x^2 - 0.00003*y + 0.029*x*y + 0.068*y^2)* (0.0056 + 0.323*x + 1.8023*x^2 + 0.272*y + 2.68*x*y + 1.18*y^2))
set_rep("S", (49.296296296296305*x^3 + 3.6666666666666665*y - 49.296296296296305*x*y^2 - 49.296296296296305*y^3)*(35.937*x^3 + 3.3*y - 35.937*x*y^2 - 35.937*y^3))
set_rep("T", (-0.01 + 1.9*x^2 - 0.0036*y + 0.086*y^2)*(0.267 - 0.00577*x + 0.048*x^2 - 1.514*y + 0.0153*x*y + 2.094*y^2))
set_rep("U", (-0.8 + y)*(-2 - 10*(0.2 + y))*(2*x^2 - (0.2 + y)^2) - 100*(2*x^2 - 0.75*(0.2 + y) + (0.2 + y)^2)^2)
set_rep("V", (0.035 - 0.65*x + 1.96*x^2 + 0.32*y - 1.93*x*y + 0.65*y^2)*(0.035 + 0.65*x + 1.96*x^2 + 0.32*y + 1.93*x*y + 0.65*y^2))
set_rep("W", (0.072 - 0.625*x + 1.28*x^2 + 0.12*y - 0.54*x*y + 0.12*y^2)*(0.072 + 0.625*x + 1.28*x^2 + 0.12*y + 0.54*x*y + 0.12*y^2)*(0.008 + 0.275*x + 1.375*x^2 - 0.128*y - 1.28*x*y + 0.42*y^2)*(0.008 - 0.275*x + 1.375*x^2 - 0.128*y + 1.28*x*y + 0.42*y^2))
set_rep("X", (-0.017 + 0.01*x + 2.15*x^2 - 0.01*y - 2.75*x*y + 1.01*y^2)*(-0.017 - 0.01*x + 2.15*x^2 - 0.01*y + 2.75*x*y + 1.01*y^2))
set_rep("Y", (-0.003 + 1.63*x^2 + 0.01*y + 0.075*y^2)*(0.017 + 0.188*x + 1.36*x^2 - 0.242*y - 1.76*x*y + 0.797*y^2)*(0.017 - 0.188*x + 1.36*x^2 - 0.242*y + 1.76*x*y + 0.797*y^2))
set_rep("Z", (0.17 - 0.01*x + 0.067*x^2 + 1.1*y - 0.03*x*y + 1.7*y^2)*(0.17 - 0.01*x + 0.067*x^2 - 1.1*y + 0.03*x*y + 1.7*y^2)* (-0.009 + 0.0086*x + 1.665*x^2 - 0.0093*y - 3.29*x*y + 1.71*y^2))
set_rep(",", 16*(0.4 + x)^2*(1 - 16*(0.2 + y)^2) - (-1 + 8*(0.4 + x) + 16*(0.2 + y)^2)^2)
set_rep(".", (0.3 + x)^2 + (0.3 + y)^2)
set_rep("!", (-(-1 + 16*(0.2 + x)^2 + 3.5*(0.45 - y))^2 + 3.0625*(1 - 16*(0.2 + x)^2)*(0.45 - y)^2)*(-0.01 + (0.2 + x)^2 + (0.3 + y)^2))
set_rep(" ", 1)

# input:  string of text to plot
# output: the polynomial for that text
def nullstellenfont(text):
    poly = 1
    for i in range(len(text)):
        poly = poly * get_rep(text[i], i)
    return poly

# input:  string of text to plot
# output: a plot of that text
def nullstellenfont_plot(text):
    poly = nullstellenfont(text)
    f(x,y) = poly(x = x, y = y)
    return implicit_plot(f, (x, -.5, -.5 + len(text)), (y, -.5,.5), plot_points = 1000, axes = False, frame = False, figsize = 20)

# input:  string of text to plot
# output: saves a PNG file of the plot
def nullstellenfont_save(text, name = None):
    if (not name):
        name = "nullstellenfont_" + text + ".png"
    nullstellenfont_plot(text).save(name)
