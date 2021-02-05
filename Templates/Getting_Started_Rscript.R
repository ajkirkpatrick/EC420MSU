


# The hastag is a "comment" - it tells R that this isn't code.
# You can use it to write notes in your code

## Data types
## 
# Numeric
a <- 1

b = 2

a+b

c = a + b
print(c)

d = a + c*2
print(d)
d


class(a)

class(c)




# Logical
L = TRUE
M = FALSE

class(L)

L+2*L



# Character

'Hello'

H = 'Hello'

class(H)



# vectors of data:
c(1,5,10)

c('Hello','There')

strings = c('Hello','There')
print(strings)

# index of vector
strings[2]

class(strings)


# sequence
11:20
count = 11:20
print(count)

count[3]

  # (no seq for letters)
  'a':'c'



# objects
newThing = c(1, 20)
newThing
print(newThing)

c(2, 50)





## Data frames
# making one:
a = c(4,3,2,1)
grade = c('A','B','C','D')
passes = c(T,T,T,F)

data.frame(num = a, grade, passes)

df = data.frame(num = a, grade, passes)
View(df)

# indexing [row, column] by number
df[2,2]

df[1,]

df[,2]


# indexing column by name or logical
df[,'grade']
df[,c(F,T,T)]

  # will not work:
  df[,asdf]
  
  # but will work:
  theColumnName = c('grade','num')
  df[,theColumnName]
  
# Column by '$'
df$grade

df$passes
# No equivalent for row.

# Adding a column

df$numDiv2 = df$num / 2
print(df)

df[,'numDiv3'] = df$num/3
print(df)

df[,7] = 2
print(df)


 df[,6] = 2
df[,10] = 10 # nope!



## Conditionals

1 == 2


2+2 == 4

2+2 != 4

2+2 >= 4

2+3 >= 5
2+3 > 5

c(1,2,3) >= 2

!( c(1,2,3) >=2  )

testing = df$num >= 2
print(testing)

df$OverTwo = df$num >= 2
print(df)




## Some useful functions
## 
# Using functions
print(df)

mean(df$num)

sum(df$num)

sd(df$num)

var(df$num)

sqrt(var(df$num))

c(df$num, df$numDiv3)

length(df$num)

NROW(df)
NCOL(df)
dim(df)

sum(df$num)/length(df$num)
mean(df$num)

plot(df$num)

plot(df$num, df$num^3)


## Opening and Loading Data
#

# Data contained in a data packages (like `wooldridge`)
library(wooldridge) # you should have already installed this in Video #1
wage = wooldridge::wage2

plot(wage$educ, wage$wage)

# a csv file
# File > Import Data > From Text (base)
wage = read.csv('C:/Users/jkirk/OneDrive - Michigan State University/Teaching/EC420MSU/Example Course Folder/Getting Started II/wage_local_file.csv', stringsAsFactors = F)


# hashtag comments
