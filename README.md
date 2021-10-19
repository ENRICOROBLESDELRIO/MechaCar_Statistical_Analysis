# MechaCar_Statistical_Analysis

Statistical analysis with R

## Multiple linear regression to Predict MPG

### i. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

- Each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model.

- According to the results, vehicle weight and length as well as ground clearance are statistically unlikely to provide random amounts of variance to the linear model.

- In other words the vehicle weight, length and ground clearance  have a significant impact on the performance mesuared by Miles Per Gallon.

- Pr(>|t|) is less than 0.05 of assumed significance level.

Multiple linear statistical metrics:
![exhibit_1](./resources/exhibit_1.png)

### ii. Is the slope of the linear model considered to be zero? Why or why not?

As was mentioned before since our p-value is less than 0.05 of the assumed significance level the slope can´t be considered to be zero.

### iii. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Even that the R-squared is 0.7149, using the correlation matrix it can be appreciated that one variable seems to be generating possible overfitting to the model (vehicle length), and the lack of significant variables could show evidence of overfitting as well. Meaning that the performance of this model works well with the current dataset, but fails to generalize and predict future data correctly.

Correlation Matrix:
![exhibit_2](./resources/exhibit_2.png)

## Summary Statistics on Suspension Coils

### i. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

- As it can be seen in the following table variance with ~62.3 and standard deviation of ~ 7.9 indicates that the requested figures for quality controls do not exceed the 100 pounds per square inch from all the manufacturing lots:

![exhibit_3](./resources/exhibit_3.png)

- But as we deep dive between manufacturing lots, we can find that lot number three actually presents a variance above the 100/inch requested, so this indicates that lot #3 presents a strong variance that affects the total summary statistics:

![exhibit_4](./resources/exhibit_4.png)

## T-Tests on Suspension Coils

- Starting with the total data set assuming the significance level was the common 0.05 percent, our p-value (0.06) is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

![exhibit_5](./resources/exhibit_5.png)

As well for the manufacturing lots number 1 and 2, p-value (1 and 0.6072) is above our significance level, meaning that there is not sufficient evidence to reject the null hypothesis, and the two means are statistically similar.

![exhibit_6](./resources/exhibit_6.png)

Finally, lot number three, with a p-value of 0.04168, is below the significance level, with means that it is possible to reject the null hypothesis showing that means are not statistically similar.

## Study Design: MechaCar vs Competition

### - What metric or metrics are you going to test?

Our previous analysis was focused on intrinsic values about the manufacturing process of MechaCar Company to evaluate it against the target competency, a further analysis could include variables such as:

- Vehicle class
- Weight
- MPG
- Fuel efficiency in the City and in Highways
- Number of cylinders
- Horse Power
- Price and estimated cost
- Among others

### - What is the null hypothesis or alternative hypothesis?

The null hypothesis could suggest that there is no significant statistical difference between performance and efficiency against the cars produced by the competency at each comparing class.

### - What statistical test would you use to test the hypothesis? And why?

First I would try Shapiro Test to see if our data is considered normally distributed and if not I would suggest a transformation with log10 and then the t.test for looking evidence to reject the null hypothesis, also a paired t-test in R comparing against competition cloud reveal some interesting insights.

### - What data is needed to run the statistical test?

As was mentioned before, some interesting insights would emerge from a data set related to vehicle efficiency and autonomy, such as:

- Vehicle class
- Weight
- MPG
- Fuel efficiency in the City and in Highways
- Number of cylinders
- Horse Power
- Price and estimated cost
- Among others