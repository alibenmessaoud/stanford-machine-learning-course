# Week 07

- Large Margin Classification
- Kernels
- SVMs in Practice 


------

### I. Large margin classification

#### 1. Optimization objectives

Alternative view of logistic regression

$h_\theta(x) = \frac{1}{1+e^{-\theta^Tx}} = g(z)$ ; __/￣

if $y = 1; \Rightarrow h_\theta(x) \approx 1$ when $\theta^Tx >> 0$

if $y = 0; \Rightarrow h_\theta(x) \approx 0$ when $\theta^Tx << 0$  

Cost of $-y\text{ }log(h_\theta(x)) + (1-y)\text{ }log(1-h_\theta(x)) $

=

Cost of $ -y\text{ }log(\frac{1}{1+e^{-\theta^Tx}}) + (1-y)\text{ }log(1-\frac{1}{1+e^{-\theta^Tx}})$ 

$y=1$ then \\__

$y = 0$ then __/

![](./img/svm0.png)

![](./img/svm1.png)

#### 2. Large Margin intuition

It is about C value;

![](./img/lmc-in-svm.png)



#### 3. Math behind Large Margin intuition

![](./img/vector-prod.png)

![](./img/vector-prod-1.png)

![](./img/vector-prod-2.png)

### II. Kernels



### III. SVMs in practice

###   