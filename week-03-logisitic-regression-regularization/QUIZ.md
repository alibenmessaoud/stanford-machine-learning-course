Suppose you are running gradient descent to fit a logistic regression model with parameter. Which of the following is a reasonable way to make sure the learning rate $\alpha$ is set properly and that gradient descent is running correctly?

1. Plot $J(θ)=\frac{1}{m}\sum_{i=1}^{m}[-y^{(i)}log(h_\theta(x^{(i)})) - (1−y^{(i)})log(1−h_\theta(x^{(i)}))]$ as a function of the number of iterations and make sure $J(\theta)$ is decreasing on every iteration: **True**
2. Plot $J(\theta)$ as a function of \thetaθ and make sure it is decreasing on every iteration: **False**
3. Plot $J(\theta)$ as a function of \thetaθ and make sure it is convex: **False** 

------

One iteration of gradient descent simultaneously performs these updates:

$\theta_0 := \theta_0−\frac{\alpha}{m}\sum_{i=1}^{m}(h_\theta(x^{(i)})-y^{(i)})x_0^{(i)}$  

$\theta_1 := \theta_1−\frac{\alpha}{m}\sum_{i=1}^{m}(h_\theta(x^{(i)})-y^{(i)})x_1^{(i)}$  

..

$\theta_n := \theta_n−\frac{\alpha}{m}\sum_{i=1}^{m}(h_\theta(x^{(i)})-y^{(i)})x_n^{(i)}$  

What should the vectorized implementation be?

1. $\theta := \theta−\frac{\alpha}{m}\sum_{i=1}^{m}[(h(x^{(i)})-y^{(i)})x^{(i)}]$ : **True**
2. $\theta := \theta−\frac{\alpha}{m}\sum_{i=1}^{m}[(h(x^{(i)})-y^{(i)})]x^{(i)}$ : **False**

------

Suppose you want to use an advanced optimization algorithm to minimize the cost function for logistic regression with parameters $\theta_0$ and $\theta_1$. You write the following code:

```matlab
function [jVal, gradient] = costFn
	jVal = ...
    gradient(1) = ... CODE#1
    gradient(2) = ... CODE#2
```

What should CODE#1 and CODE#2 above compute?

$\frac{d}{d\theta_0}J(\theta) = \frac{1}{m}\sum_{i=1}^{m}[(h(x^{(i)})-y^{(i)})x_0^{(i)}]$ 

$\frac{d}{d\theta_1}J(\theta) = \frac{1}{m}\sum_{i=1}^{m}[(h(x^{(i)})-y^{(i)})x_1^{(i)}]$ 

------

Suppose you have a multi-class classification problem with k classes (so $y \in \{1,2,\dots,k\}$). Using the 1-vs.-all method, how many different logistic regression classifiers will you end up training? k

------

