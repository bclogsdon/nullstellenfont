# Nullstellenfont: Typesetting with Algebraic Curves

Nullstellenfont was developed to graph text using algebraic curves known as *varieties* in Algebraic Geometry. 
For example the font name typeset in the font looks like: 

![Typeset Font Name](https://github.com/bclogsdon/nullstellenfont/blob/master/nullstellenfont_NULLSTELLENFONT.png)


## Installation 
To use Nullstellenfont, download the file "nullstellenfont.sage" then load it into your favorite interactive Sage platform by:

```python
load("nullstellentfont.sage")
```

For a great online Sage editor we recommend [CoCalc](https://cocalc.com) where you can use the ">_Shell" button to load the file. 

## Usage 

Nullstellenfont works by taking a string of text, constructing a polynomial from that text, creating a plot of the variety defined by the polynomial and saving that plot. The file has a method for each of these steps, detailed below. 

#### Generating Polynomials
To generate a polynomial use the method 'nullstellenfont' and enter a string of text.
```python
nullstellentfont("HELLO WORLD")
```
This will return a polynomial that defines the vareity of that text. Letters not defined in the 'reps' dictionary at the beginning of the code will be skipped. 

#### Plotting Polynomials
To generate a plot of your text, use the 'nullstellentfont_save' method and enter your string of text as follows:
```python 
nullstellentfont_save("HELLO WORLD")
```
This will save a file called 'nullstellentfont_HELLO WORLD.png'. To specify a different file name enter that as an optional second parameter. 

__Note:__ If your string contains characters for which a variety has not been defined in the 'reps' dictionary it will simply skip them and leave a blank space where that character should go. Currently, these the dictionary contains all capital letters and the punctutaion '.', ',', and '!'. The 'reps' dictionary is located in the first section of the code after the method 'get_rep'. 

## License 

coming soon...
