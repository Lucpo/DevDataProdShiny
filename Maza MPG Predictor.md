Maza MPG Predictor
========================================================
author: Lucian Pop
date: Sept 27, 2015



Why you need it
========================================================
----------------------

To be able to estimate or predict your modified Mazda Race car MPG you can use this tool.

It was developed using mtcars test data and is using a cariety of cars data for a comprehensive result.

For long races like "Le Mans" it is important to properly estimate and optimize required fuel.


Application Usage
========================================================

- Launch application.
- Use the HP slider to set your final power in HP.
- Use the Weight slider to set the final weight in pounds.
- Press the submit button.


Sample Prediction
========================================================

For modified Mazda with 100 HP power and weigthing 2500 lbs.


```r
data(mtcars)
mtcars$am   <- factor(mtcars$am,labels=c('Automatic','Manual'))
model.5 <- lm(mpg ~ am + wt + hp, mtcars)
testcar <- mtcars[1,]
  testcar$hp =100  
  testcar$wt =2.5  
  result<-predict(model.5, newdata=testcar)
  result
```

```
Mazda RX4 
 25.14227 
```


Thank you
========================================================

If you find this application usefull please let us know.

We can further improve it by taking into consideration other factors like:
- transmission type
- cylinders
- displacement 



