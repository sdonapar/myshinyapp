data(mtcars)
modFit <- lm( mpg ~ cyl + hp + wt + am, data=mtcars)
predict_milage <- function(cyl,hp,weight,am) {
        newdata <- data.frame(cyl=c(as.integer(cyl)),wt=c(weight/1000),hp=c(hp),am=c(as.integer(am)))
        milage <- predict(modFit,newdata)
        return(round(milage,2))
}
