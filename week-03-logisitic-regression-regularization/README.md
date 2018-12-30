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

