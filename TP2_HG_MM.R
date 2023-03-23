library(tidyverse)
dataset=read.csv('Store_Data.csv')

#exploration of data set
view(dataset)
head(dataset)
glimpse(dataset)
length(dataset)
names(dataset)
summary(dataset)

#evaluating for missing data points
colSums(is.na(dataset))


    #Visualization 

#HISTOGRAMS
#sales distribution
ggplot(data=dataset, 
       aes(Sales))+
  geom_histogram()

#profit distribution
ggplot(data=dataset, 
       aes(Profit))+
  geom_histogram()

#discount distribution
ggplot(data=dataset, 
       aes(Discount))+
  geom_histogram()

#quantity of items sold distribution
ggplot(data=dataset, 
       aes(Quantity))+
  geom_histogram()

#order year distribution
ggplot(data=dataset, 
       aes(Order_Year))+
  geom_histogram()

#ship year distribution
ggplot(data=dataset, 
       aes(Ship_Year))+
  geom_histogram()

#order month distribution
ggplot(data=dataset, 
       aes(Order_Month))+
  geom_histogram()

#ship month distribution
ggplot(data=dataset, 
       aes(Ship_Month))+
  geom_histogram()

#Postal Code distribution
ggplot(data=dataset, 
       aes(Postal_Code))+
  geom_histogram()

#BAR PLOTS
#State bar plot
ggplot(data=dataset, 
       aes(x=State))+
  geom_bar()

#Region bar plot
ggplot(data=dataset, 
       aes(x=Region))+
  geom_bar()

#category bar plot
ggplot(data=dataset, 
       aes(x=Category))+
  geom_bar()

#Sub Category bar plot
ggplot(data=dataset, 
       aes(x=Sub.Category))+
  geom_bar()

#city bar plot 
ggplot(data=dataset, 
       aes(x=City))+
  geom_bar()

#Segment (buyer) bar plot
ggplot(data=dataset, 
       aes(x=Segment))+
  geom_bar()

#Shipping mode bar plot
ggplot(data=dataset, 
       aes(x=Ship_Mode))+
  geom_bar()

#BOXPLOT
#sales boxplot
ggplot(data=dataset, 
       aes(Sales))+
  geom_boxplot(fill='Blue')

#profit boxplot
ggplot(data=dataset, 
       aes(Profit))+
  geom_boxplot(fill='Blue')

#discount boxplot
ggplot(data=dataset, 
       aes(Discount))+
  geom_boxplot(fill='Blue')

#Order month boxplot
ggplot(data=dataset, 
       aes(Order_Month))+
  geom_boxplot(fill='Blue')

#Ship month boxplot
ggplot(data=dataset, 
       aes(Ship_Month))+
  geom_boxplot(fill='Blue')

#Quantity boxplot
ggplot(data=dataset, 
       aes(Quantity))+
  geom_boxplot(fill='Blue')

#DENSITY PLOTS
#Sales per State
ggplot(data=dataset, 
       aes(Sales, 
           color=State, 
           fill=State))+
  geom_density(alpha=.3)

#Profit per State
ggplot(data=dataset, 
       aes(Profit, 
           color=State, 
           fill=State))+
  geom_density(alpha=.3)

#Discount per State
ggplot(data=dataset, 
       aes(Discount, 
           color=State, 
           fill=State))+
  geom_density(alpha=.3)

#Quantity per State
ggplot(data=dataset, 
       aes(Quantity, 
           color=State, 
           fill=State))+
  geom_density(alpha=.3)

#Discount per category
ggplot(data=dataset, 
       aes(Discount, 
           color=Category, 
           fill=Category))+
  geom_density(alpha=.3)

#Profit per category
ggplot(data=dataset, 
       aes(Profit, 
           color=Category, 
           fill=Category))+
  geom_density(alpha=.3)

#Profit per Region
ggplot(data=dataset, 
       aes(Profit, 
           color=Region, 
           fill=Region))+
  geom_density(alpha=.3)

#Sales per Region
ggplot(data=dataset, 
       aes(Sales, 
           color=Region, 
           fill=Region))+
  geom_density(alpha=.3)

#SCATTER PLOT
#Profit over the year
ggplot(data=dataset, 
       aes(Profit,Order_Year,color=Order_Year))+
  geom_point(size=2)

#Sales over the year
ggplot(data=dataset, 
       aes(Sales,Order_Year,color=Order_Year))+
  geom_point(size=2)

#Discounts over the year
ggplot(data=dataset, 
       aes(Discount,Order_Year,color=Order_Year))+
  geom_point(size=2)

#Quantity per state
ggplot(data=dataset, 
       aes(Quantity,State,color=State))+
  geom_point(size=2)

#Sales per quantity
ggplot(data=dataset, 
       aes(Sales,Quantity,color=Quantity))+
  geom_point(size=2)

#Sales per quantity
ggplot(data=dataset, 
       aes(Quantity,Sales,color=Sales))+
  geom_point(size=2)

#Profit per quantity
ggplot(data=dataset, 
       aes(Quantity,Profit,color=Profit))+
  geom_point(size=2)

#Profit vs ship mode
ggplot(data=dataset, 
       aes(Profit,Ship_Mode,color=Ship_Mode))+
  geom_point(size=2)

#HEAT GRAPH

#heatmap
view(dataset)

#correlation btw height_ft and mass
data=dataset[,c(19, 20, 18, 21, 22, 23, 24 ,25)]
view(data)
corr=round(cor(data),8)
paste(corr)

library(reshape2)
melted_corr=melt(corr)
head(melted_corr)
ggplot(data=melted_corr, 
       aes(Var1,Var2, fill=value))+
  geom_tile()
