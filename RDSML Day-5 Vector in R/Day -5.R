# Vectors in R

# creating the vector using c() command
student.height =c(60, 69, 55, 62)
student.height

 #checking the class of the vector student.height
is.numeric(student.height)
is.logical(student.height)

#R AUTOMATICALLY CONVERTS TO  TEXT WHEN YOU HAVE A TEXT ITEM IN THE VECTOR
b = c(5, 8, 2, "sv")
is.numeric(b)
is.character(b)

#we can convert data types
#for example from numeric to character\
# = or <-
a <- c(1, 2, 3, 4, 5)

class(a)
is.numeric(a)
as.character(a)

a =as.character(a)

a 
class(a)

#logical operator true & false when converted to numeric, True converts to 1, & false converts to 0

d = c(TRUE, FALSE, FALSE, TRUE, FALSE)
d = as.numeric(d)
d

#converting numeric to logical (1 or any number )
#other than 0 converts to TRUE ,O converts to FALSE
d
class(d)
d =as.logical(d)
d
e = c(1, 0, 1, 0, 23, -7)
e = as.logical(e)
e

# creating the sequential vector
# creating vector starting from 1 to 10
my.seq = c(1:50, 80, 90, 88, 60, 77)
my.seq

# creating a sequential vector using the seq( function)
new.seq = c(seq(1,10))
new.seq

#sequence in steps for 3
new.seq = c(seq(1, 10, by=3))
new.seq

#vectors can have character
names = c("Elias", "sv", "dfr")
names
class(names)
names[1:3]
names[2]

#assigning to vector values
my.values = c(4, 7, 9, 11)
names(my.values) = c('a', "b", "c", "d")
my.values
my.values["a"]
