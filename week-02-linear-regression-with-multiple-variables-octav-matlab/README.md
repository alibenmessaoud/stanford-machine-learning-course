# Week 02

- Linear regression with multiple variables
  - Multivariate Linear Regression
  - Computing Parameters Analytically
- Octav/ Matlab usage

------

## I. Linear regression with multiple variables

### 1. Multivariate Linear Regression

#### a. Multiple features (variables)

- Linear regression with multiple variables = "multivariate linear regression".

| Size ($x_1$) | Nb of bedrooms ($x_2$) | Nb of floors ($x_3$) | Age ($x_4$) | Price ($y$) |
| ------------ | ---------------------- | -------------------- | ----------- | ----------- |
| 2100         | 2                      | 1                    | 45          | 460         |
| ...          |                        |                      |             |             |

$n$ = number of features

$x^{(i)}$ = input features of $i^{th}$ training example

$x_j^{(i)}$ = value of feature $j$ in the $i^{th}$ training example 

$m$ = number of training examples 

$h_\theta(x) = \sum_{k=1}^{n} \theta_k x_k = \theta_0 x_0 + \theta_1 x_1 + .. + \theta_n x_n$ and $x_0^{i} = 1$ 
$$
x = \begin{bmatrix}
    x_0  \\
    x_1  \\
    ..  \\
    x_n
    \end{bmatrix}
;    
\theta = \begin{bmatrix}
    \theta_0  \\
    \theta_1  \\
    ..  \\
    \theta_n
    \end{bmatrix}
; 
h_\theta(x) = \theta^Tx = \begin{bmatrix} \theta_0 ... \theta_n \end{bmatrix} \begin{bmatrix} x_0  \\ x_1  \\ ..  \\ x_n \end{bmatrix}
$$
hence, the multivariate regression.

#### b. Gradient Descent for Multiple Variables

- Hypothesis: $h_\theta(x) = \theta^Tx = \theta_0 x_0 + \theta_1 x_1 + .. + \theta_n x_n$

- Parameters: $\theta_0, \theta_1, ..., \theta_n = \theta$

- Cost function: $J(\theta_0, \theta_1, ..., \theta_n) = J(\theta) = \frac{1}{2m}\sum_{i=1}^m(h-\theta(x^{(i)}) - y^{(i)})^2$

- Gradient descent:

  > Repeat:
  >
  > ​	$\theta_j := \theta_j - \alpha \frac{d}{d\theta_j}J(\theta)$
  >
  > where $j=0..n$ 

Previously number of features is n = 1; so there's only $\theta_0$ and $\theta_1$;

- Now, $n \ge 1;$ so $\theta_j$ takes values $j=0..n$;

#### c. Gradient Descent - Feature Scaling

- Speed up gradient descent, how? → Put input values in the same range

  - $\theta$ will descend:  
    - quickly on small ranges 
    - slowly on large ranges.
    - can oscillate and change range.

  → The way to prevent this is to modify the ranges. Example: $-1 ≤ x_i≤ 1$

- To get all input variables into roughly one of these ranges?
  - Two techniques to help with this are feature scaling and mean normalization
    - Feature scaling = dividing the input values by the range of the input variable.
    - Mean normalization = ...
      → $x_i = (x_i - \mu_i)/s_i$
         $s_i$ = the range of values (max - min) = the standard deviation
         $\mu_i$ = the average of all the values for feature (i)
      Example:  if $x_i$ represents housing prices with a range of 100 to 2000 and a mean value of 1000, then, $x_i = \frac{price-1000}{1900}$