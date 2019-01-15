Your anomaly detection system flags x as anomalous whenever $p(x) \leq \epsilon$. Suppose your system is flagging too many things as anomalous that are not actually so (similar to supervised learning, these mistakes are called false positives). What should you do?

Try increasing $\epsilon$.

Try decreasing $\epsilon$. Correct

------

![](./img/quiz-1.png)

------

Which of the following problems would you approach with an anomaly detection algorithm (rather than a supervised learning algorithm)? Check all that apply.

You run a power utility (supplying electricity to customers) and want to monitor your electric plants to see if any one of them might be behaving strangely.

Correct 

You run a power utility and want to predict tomorrow’s expected demand for electricity (so that you can plan to ramp up an appropriate amount of generation capacity).

Un-selected is correct 

A computer vision / security application, where you examine video images to see if anyone in your company’s parking lot is acting in an unusual way.

Correct 

A computer vision application, where you examine an image of a person entering your retail store to determine if the person is male or female.

Un-selected is correct 

------

Suppose your anomaly detection algorithm is performing poorly and outputs a large value of p(x) for many normal examples and for many anomalous examples in your cross validation dataset. Which of the following changes to your algorithm is most likely to help?

Try using fewer features.

Try coming up with more features to distinguish between the normal and the anomalous examples. Correct 

Get a larger training set (of normal examples) with which to fit p(x).

Try changing $\epsilon$.

------

