Suppose we want to try to minimize $J(\Theta)$ as a function of $\Theta$, using one of the advanced optimization methods (fminunc, conjugate gradient, BFGS, L-BFGS, etc.). What do we need to supply code to compute (as a function of $\Theta$)?

$J(\Theta)$ and the (partial) derivative terms $\frac{\partial}{\partial\Theta_{ij}^{(l)}}$ for every $i,j,l$ 

------

Suppose you have two training examples $ (x^{(1)}, y^{(1)})(x(1),y(1))$ and $(x^{(2)}, y^{(2)})(x(2),y(2))$. Which of the following is a correct sequence of operations for computing the gradient? (Below, FP = forward propagation, BP = back propagation).

FP using $x^{(1)}x(1)$ followed by FP using $x^{(2)}x(2)$. Then BP using $y^{(1)}y(1)$ followed by BP using $y^{(2)}y(2)$.

FP using $x^{(1)}x(1)$ followed by BP using $y^{(2)}y(2)$. Then FP using $x^{(2)}x(2)$ followed by BP using $y^{(1)}y(1)$.

BP using $y^{(1)}y(1)$ followed by FP using $x^{(1)}x(1)$. Then BP using $y^{(2)}y(2)$ followed by FP using $x^{(2)}x(2)$.

FP using $x^{(1)}x(1)$ followed by BP using $y^{(1)}y(1)$. Then FP using $x^{(2)}x(2)$ followed by BP using $y^{(2)}y(2)$: **True**

------

Suppose D1 is a 10x6 matrix and D2 is a 1x11 matrix. You set:DVec = [D1(:); D2(:)];Which of the following would get D2 back from DVec?

reshape(DVec(60:71), 1, 11)

reshape(DVec(61:72), 1, 11)

reshape(DVec(61:71), 1, 11)

Correct 

reshape(DVec(60:70), 11, 1)

------

Let $J(\theta) = \theta^3$. Furthermore, let $\theta = 1$ and $\epsilon = 0.01$. You use the formula:$\frac{J(\theta+\epsilon) - J(\theta - \epsilon)}{2\epsilon}$ to approximate the derivative. What value do you get using this approximation? (When $\theta = 1$, the true, exact derivative is $\frac{d}{d\theta}J(\theta)=3$.

3.0000

3.0001

Correct 

3.0301

6.0002

------

What is the main reason that we use the backpropagation algorithm rather than the numerical gradient computation method during learning?

The numerical gradient computation method is much harder to implement.

The numerical gradient algorithm is very slow.

Correct 

Backpropagation does not require setting the parameter EPSILON.

None of the above.