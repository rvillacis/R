# R Knowledge

#If you need any help, you can just put a question mark before
?matrix 

#Install packages
install.packages('psqr')
library(psqr)

#Arrays or vectors
hola = c(3,2,4,5,6,7)
chao = c('as','bo','fi','tonto')

#Data descriptors
class(hola)
attributes(hola)
str(hola) #Structure and summary of objects
names() or rownames() or colnames()
length()
dim() #dimensions
typeof() #For the type of data inside

#Arrays are vectorized so you can just do equations with them. If they are not the same
#length then the longer vector gets added to a loop of the smaller.
#Like numpy you can also perform boolean operations on arrays

#Collector data types
first = c(1,2,3)
matrix_a = matrix(1:10, byrow=TRUE, ncol=2, nrow=5)
df = data.frame(name1=column1,name2=column2) #Can have multiple data types
list_test = list(name1=vector1, name2=vector2, name3=vector3)
as.integer(), as.matrix(), as.data.frame()

v1 <- c(v1, 100) # Adding values
#Use cbind or rbind to add values to matrices or dataframes

#Slicing is done the same as Python. It starts at 0 
vector[5]
to_be_sliced = c(1,2,3,4,5,6,6,7,8,9)
sliced = to_be_sliced[0:5]
sliced_matrix[1,2]
sliced_matrix2[1,]
matrix_a[1:3,2:3]
df$column[5:10]
list[[1]]

#Conditionals
print(first>2)
print(first[first>2])
first[(first>2) & (first<2)]
first[(first>2) | (first<2)]
m1[m1[,1] < 5,]
df1[df1[,3]=='f',]

# If Else statements
if (x<0){
    do something
}  else if {
    something
} else {
    last_statement
}

if (x < 0) print('hola') else print('nope')

#Functions
function1 = function(arguments=0){
    hola = do_something
    return(hola)
}
function1(1)
ret_value = function1(2)

#Specific Functions
subset(dataset,logical_op ==0, select=c(columns_in_dataset)) #Subset based on logical operator
table(dataset) #Frequency distribution of data
ncol() or nrow() #Number of rows or columns
rowPerc() or colPerc #Show percentages by row or column
xtabs(~row+col,data=dataset) #Table with frequency distribution by row/col
cbind() or rbind() #Put that data side-by-side in column or row
read_excel(), read.csv(), read.table(), fromJSON(url)
seq(25) # Is like range in Python
apply(array,c(1,2),function) #Apply function to matrix. 1 is rows, 2 columns, c(1,2)=rows and columns
ifelse(x<0,0,1) #Vectorized if/else statement for matrices
apply(), lapply(data,func,args), sapply() #For matrices, vectors, sapply() returns array not list
times_x = lapply(data, function(data, factor) {data*factor}, factor=4) #Works as lambda
unlist() #See a list as vector
glimpse() #Similar to head and names(). Needs dplyr

#Graphics
hist(mtcars$disp, breaks=100, col="Green") #Histogram
density(mtcars$mpg) #Density
plot(income, population, xlab="Population", ylab="Income", main="Income vs Pop") #Scatterplot
plot(income, population, xlab="Population", ylab="Income", col=3, type="l") #Line graph
lines(income,population)
boxplot(mpg$syl) #Boxplots
qqplot(x, y) # QQ plots 
par(mfrow=c(x,y)) #For multiple rows/columns on screen

library(ggplot2)
ggplot(data=mcars
    aes(x=wt,y=mpg)) + #How the data is presented
    geom_point() + #Geometric objects like lines, bars, points
    labs(title="Automobile Data", x="Weight", y="Miles Per Gallon")

    + qqline() + qqband() + qqpoint()

#Alternative geom attributes
size=5, color='red', alpha=1, fill='red', linetype=5, shape="circle", width=2
# Geom also has alternatives based on plot type
geom_point(), geom_bar(), geom_histogram(), geom_boxplot(), geom_bar(), geom_jitter(), geom_line(), geom_density()

ggsave('myplot.pdf')

#Dyplr which is like SQL
library(dplyr)
filter(data, column1 == 'something', column2 == 'something') #Filters by values. Can also use | for OR
arrange(data, column1, column2) #Arrange by columns ASC, use desc(column) for descending
select(data, column1:column2, column3) #Select columns
mutate(data, newcolumn = column1 - column2) #Add new columns
group_by(column1) #Group by data in that column. Can use multiple columns
summarize(data, stats = mean(column1, na.rm = T),n=n()) #Provide summary statistics, can be grouped by functions
new_data = data%>%filter(column1>7.09)%>%select(column1,column2,column3) #Pipes, pass data through multiple steps

starts_with('X'), ends_with('X'), contains('X'), matches('X'), num_range('X', 1:5), one_of(vector1) #Helpers to select columns

g465MjNG1KuAso4