# Week 03

- Logistic Regression
  - Classification and Representation
  - Logistic Regression Model
  - Multiclass Classification
- Regularization
  - Solving the Problem of Overfitting

------

## I. Logistic Regression

### 1. Classification and Representation

#### a. Classification

- Example: Email: Spam → 0 or 1; Transaction: fraudulent;

- $y = 0$ as negative class;

- $y = 1$ as positive class; 

  $\Rightarrow$ binary classification.

- Use linear regression and map prediction based on threshold comparison.
  - Threshold classifier $h_\theta(x)$ can be > 0 or < 0
  - $x^{(i)}$ as a feature and $y$ as binary value;

  $\Rightarrow$ Classification problem **is like** regression problem on a discrete values.

  $\Rightarrow$ This method doesn't work well because classification is not actually a linear function.

#### b. Hypothesis Representation
- In some cases, y as 0 or 1 is not good. Sometimes we need real values between 0 and 1;
- To fix this as $0 \le h_\theta(x) \le 1$, add it into a Logisitic function.
  - $h_{\theta}(x)=g(\theta^Tx)$ and $z = \theta^Tx$ so $g(z)=\frac{1}{1+e^{-z}}$
  - $g(z)$ converge to 0 when z is negative 
  - $g(z)$ converge to 1 when z is positive; 
  - $g(0) = 0.5$;
  - __/￣
  - $z$ good to have values between 0 and 1;
- So $h_\theta(x)$ will give the **probability**. 
- $h_\theta(x) = P(y=1 | x; \theta) = 1 - P(y=0 | x; \theta)$
- $\sum P = 1$

#### c. Decision

- To get discrete 0 or 1 classification, translate the output of the hypothesis function as follows:
  - $h_\theta(x) \ge 0.5$ $\Rightarrow$ $y = 1$
  - $h_\theta(x) \lt 0.5$ $\Rightarrow$ $y = 0$
- The logistic function g behaves as that when its input $\ge$ 0, its output $\ge$ 0.5:
  - $g(z) \ge 0.5$ **when** $z \ge 0$

- Remember:
  - $z = 0, e^0 = 1$ $\Rightarrow$ $g(z) = 0.5$
  - $z=+\infty, e^{+\infty} \rightarrow 0$ $\Rightarrow$ $g(z) = 1$
  - $z=-\infty, e^{-\infty} \rightarrow \infty$ $\Rightarrow$ $g(z) = 0$
  - __/￣

- So if our input to $g$ is $\theta^T$, then that means:
  - $h_\theta(x) = g(\theta^Tx) \ge 0.5$ **when** $\theta^Tx \ge 0$

- So:
  - $\theta^Tx \ge 0$ $\Rightarrow$ $y = 1$
  - $\theta^Tx \lt 0$ $\Rightarrow$ $y = 0$

- Example:
  - choose parameters of $\theta$
  - resolve $\theta$ in $h_\theta(x) = g(\theta_0 + \theta_1x_1 + \theta_2x_2 + ...)$ so g is not necessarily linear when use $x_1^2$ or else $power^3$;
  - $\theta = [5; 11; 0], y = 1$ if $5-x_1 + 0x_2 \ge 0$ so it gives $x_1 \le 5$
    $\Rightarrow$ Decision boundary is a straight vertical line placed on the graph where $x_1 = 5$; at left $y = 1$; at right $y = 0$;
  - note: sigmoid function g(z)

### 2. Logistic regression
##### a. Cost function

Cannot use the same cost function like in linear regression; Logistic function will cause the output to be wavy, causing many local optima so it will not be a convex function.

$J(\theta) = \dfrac{1}{m} \sum_{i=1}^m \mathrm{Cost}(h_\theta(x^{(i)}),y^{(i)})$
$Cost(h_\theta(x),y) = -\log(h_\theta(x)); \text{if y = 1}$
$Cost(h_\theta(x),y) = -\log(1-h_\theta(x)); \text{if y = 0}$

> When y = 1, we get the following plot for $J(\theta)$ vs $h_\theta (x)$: 
>
> - 0 → $+\infty$
> - 1 → $\approx0$

> When y = 0, we get the following plot for $J(\theta)$ vs $h_\theta (x)$: 
>
> - 0 → 0
> - 1 → $+\infty$

$$Cost(h_\theta(x),y) = 0 h_\theta(x) = y$$
$Cost(h_\theta(x),y) \rightarrow \infty \text{ if } y = 0 \; \text{and} \; h_\theta(x) \rightarrow 1$
$Cost(h_\theta(x),y) \rightarrow \infty \text{ if } y = 1 \; \text{and} \; h_\theta(x) \rightarrow 0$

Note that writing the cost function in this way guarantees that J(θ) is convex for logistic regression.

##### b. Simplified Cost Function and Gradient Descent

###### i. Cost function

We can compress our cost function's two conditional cases into one case:

​	$Cost(h_\theta(x),y)=−ylog(h\theta(x))−(1−y)log(1−h\theta(x))$ 

​	When $y=0$ or $y =1$ then one of the latter parts will be zero;

 Full logistic regression cost function:

​	$J(θ)=\frac{1}{m}\sum_{i=1}^{m}[-y^{(i)}log(h_\theta(x^{(i)})) - (1−y^{(i)})log(1−h_\theta(x^{(i)}))]$

​	So minimize $J(\theta)$ 

A vectorized implementation is:

​	$h=g(X\theta)$

​	$J(θ)=1/m⋅(−y^Tlog(h)−(1−y)^Tlog(1−h))$

###### ii. Gradient Descent

Remember that the general form of gradient descent is:

​	Minimize $J(\theta)$ : Repeat { $\theta_j:=\theta_j−\alpha \frac{d}{d\theta_j}J(\theta)$ }

​	$\frac{d}{d\theta_j} J(\theta) = 1/m \sum_{i=1}^{m}(h_\theta(x^{(i)})-y^{(i)})x_j^{(i)}$ 

​	where $h_\theta(x) = \frac{1}{1+e^{-\theta^TX}}$

​	Repeat { $\theta_j := \theta_j−\frac{\alpha}{m}\sum_{i=1}^{m}(h_\theta(x^{(i)})-y^{(i)})x_j^{(i)}$  }

This algorithm is identical to the one we used in linear regression (where $h_\theta(x) = \theta^Tx$). Simultaneously update all values in $\theta$.

A vectorized implementation is: $\theta := \theta−\frac{\alpha}{m}X^T(g(X\theta)-y)$ 

##### c. Advanced optimization 

Cost function $J(\theta)$ and want to min $J(\theta)$ so do gradient descent as we have $\frac{d}{d\theta_j}J(\theta)$. 

Optimization algorithms:

1. Gradient descent
2. Conjugate gradient
3. BFGS
4. L-BFGS

With the 3 latter ones, no to $\alpha$, fatser and more complex

Example: 

$\theta = \begin{bmatrix} \theta_1 \\ \theta_2  \end{bmatrix}; J(\theta) = (\theta_1-5)^2-(\theta_2-5)^2$

$\frac{d}{d\theta_1}J(\theta) = 2(\theta_2 - 5); \frac{d}{d\theta_2}J(\theta) = 2(\theta_1 - 5)$ 

```matlab
function [jVal, gradient] = costFn
	jVal = (theta(1) - 5)^2 + (theta(2) - 5)^2
    gradient = zeros(2, 1)
    gradient(1) = 2*(theta(1) - 5)
    gradient(2) = 2*(theta(2) - 5)
    
options = optimset('GradObj', 'on', 'MaxIter', 100);
initialTheta = zeros(2,1);
   [optTheta, functionVal, exitFlag] = fminunc(@costFn, initialTheta, options);
```

### 3. Multiclass classification

Instead of y = {0,1} we will expand our definition so that y = {0,1...n}.

Since y = {0,1...n}, we divide our problem into n+1 binary classification problems; in each one, we predict the probability that 'y' is a member of one of our classes.

$y \in{0,1...n}$

$h^{(0)}_\theta(x)=P(y=0|x; \theta)$

$h^{(1)}_\theta(x)=P(y=1|x; \theta)$ 

...

$h^{(n)}_\theta(x)=P(y=n|x; \theta)$

$prediction=max_i(h^{(i)}_\theta(x))$ 

We are basically choosing one class and then lumping all the others into a single second class. Repeat this. Apply binary logistic regression to each case, and then use the hypothesis that returned the highest value as our prediction.

## II. Regularization

### 1. The problem of overfitting

Example: Housing prices using linear regression

- $\theta_0 + \theta_1x$ called underfit or high bias

- $\theta_0 + \theta_1x + \theta_2x^2 $ called just right

- $\theta_0 + \theta_1x + \theta_2x^2 + \theta_3x^3 + \theta_4x^4$ called overfit or high variance 

  Plotted pass near the points

  $\Rightarrow$ Overfit = many features + the learned hypothesis fit the training set ($J(\theta) \approx0$) + fail to fit new examples.

  $j(\theta) = 1/2m \sum_{i=1}^{m}(h_\theta(x^{(i)}) - y^{(i)})^2$

Example: Logistic regression 

- $h_\theta(x) = g(\theta_0 + \theta_1x_1 + \theta_2x_2)$ called underfit

- $h_\theta(x) = g(\theta_0 + \theta_1x_1 + \theta_2x_2 + \theta_3x_1^2 +..)$

- $h_\theta(x) = g(\theta_0 + \theta_1x_1 + \theta_2x_2 + \theta_3x_1^2 +.. + .. )$

  Plotted create a boundary between points of 2 or more classes 

Address overfitting:

1. Reduce number of features:
   - Manually select which features to keep 
   - Model selection algorithm
2. Regularization:
   - Keep all features but reduce values of $\theta_j$ 
   - Regularization works well when we have a lot of slightly useful features.

### 2. Cost function

### 3. Regularized Linear regression







