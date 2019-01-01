Suppose we want to try to minimize $J(\Theta)$ as a function of $\Theta$, using one of the advanced optimization methods (fminunc, conjugate gradient, BFGS, L-BFGS, etc.). What do we need to supply code to compute (as a function of $\Theta$)?

$J(\Theta)$ and the (partial) derivative terms $\frac{\partial}{\partial\Theta_{ij}^{(l)}}$ for every $i,j,l$ 

------

Suppose you have two training examples $ (x^{(1)}, y^{(1)})(x(1),y(1))$ and $(x^{(2)}, y^{(2)})(x(2),y(2))$. Which of the following is a correct sequence of operations for computing the gradient? (Below, FP = forward propagation, BP = back propagation).

FP using $x^{(1)}x(1)$ followed by FP using $x^{(2)}x(2)$. Then BP using $y^{(1)}y(1)$ followed by BP using $y^{(2)}y(2)$.

FP using $x^{(1)}x(1)$ followed by BP using $y^{(2)}y(2)$. Then FP using $x^{(2)}x(2)$ followed by BP using $y^{(1)}y(1)$.

BP using $y^{(1)}y(1)$ followed by FP using $x^{(1)}x(1)$. Then BP using $y^{(2)}y(2)$ followed by FP using $x^{(2)}x(2)$.

FP using $x^{(1)}x(1)$ followed by BP using $y^{(1)}y(1)$. Then FP using $x^{(2)}x(2)$ followed by BP using $y^{(2)}y(2)$: **True**

------

