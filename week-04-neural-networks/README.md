# Week 04

- Motivations
- Neural Networks
- Applications

------

## Motivation

Non-linear classification and use more than 5000 features, so sigmoid function g will be complicated. 

$\Rightarrow$ Complex

Computer vision problem:

- A car is a matrix for a computer.
- For a car, look and store specific pixels.
- Give the algorithm a list of car images so it learns what is a car.
- A pixel is feature so the calculation will be complex.

Neural network:

- Algorithm trying to mimic the brain
- 80'

## Neural networks

### Representation

Neuron model: Logistic unit

$x_0, x_1, x_2, x_3 \Rightarrow [wires] \Rightarrow h_\theta(x)$; $x_0 = 1$ bias unit

$h_\theta(x) = \frac{1}{1+e^{-\theta^Tx}}$  $x = \begin{bmatrix} x_0 \\ x_1 \\ x_2 \\ x_3 \end{bmatrix}$ $\theta = \begin{bmatrix} \theta_0 \\ \theta_1 \\ \theta_2 \\ \theta_3 \end{bmatrix}$ 

sigmoid (logistic) activation function $g(z) = \frac{1}{1+e^{-z}}$ 

![./img/nnlayers.png](./img/nnlayers.png)

![./img/nnlayersexplanation.png](./img/nnlayersexplanation.png)

$\Theta^{(j)}$ = matrix of weights controlling function mapping from layer $j$ to layer $j+1$

$a_i^{(j)}$ = "activation" of unit $i$ in layer $j$

This is saying that we compute our activation nodes by using a 3×4 matrix of parameters. 

$a_1^{(2)} = g(\Theta_{10}^{(1)}x_0 + \Theta_{11}^{(1)}x_1 + \Theta_{12}^{(1)}x_2 + \Theta_{13}^{(1)}x_3)$ 

$a_2^{(2)} = g(\Theta_{20}^{(1)}x_0 + \Theta_{21}^{(1)}x_1 + \Theta_{22}^{(1)}x_2 + \Theta_{23}^{(1)}x_3)$

$a_3^{(2)} = g(\Theta_{30}^{(1)}x_0 + \Theta_{31}^{(1)}x_1 + \Theta_{32}^{(1)}x_2 + \Theta_{33}^{(1)}x_3)$ 

$h_\Theta(x) = a_1^{(3)} = g(\Theta_{10}^{(2)}a_0^{(2)} + \Theta_{11}^{(2)}a_1^{(2)} + \Theta_{12}^{(2)}a_2^{(2)} + \Theta_{13}^{(2)}a_3^{(2)})$



Example: If layer 1 has 2 input nodes and layer 2 has 4 activation nodes. Dimension of $\Theta^{(1)}$ is going to be 4×3 where $s_j = 2$ and $s_{j+1} = 4$, so $s_{j+1} \times (s_j + 1) = 4 \times 3$

#### Forward Propagation: Vectorized implementation 

$a_1^{(2)} = g(z_1^{(2)})$

$a_2^{(2)} = g(z_2^{(2)})$

$a_3^{(2)} = g(z_3^{(2)})$

$z^{(2)} = \begin{bmatrix} z_1^{(2)}\\z_2^{(2)}\\z_3^{(2)} \end{bmatrix} $

$z^{(2)} = \Theta^{(1)} a^{(1)}$

$a^{(2)} = g(z^{(2)})$

Add $a_0^{(2)} = 1$ 

$z^{(3)} = \Theta^{(2)} a^{(2)}$

$h_\Theta(x) = a^{(3)} = g(z^{(3)})$

Example

$a(2) = ?$ 

$z(2)=Θ(1)a(1); a(2)=g(z(2))$ 



Summary

$z^{(j)}=Θ^{(j−1)}a^{(j−1)}$ 

$a^{(j)}=g^{(z(j))}$

$hΘ^{(x)}=a^{(j+1)}=g(z^{(j+1)})$ 

