Which of the following statements are true? Check all that apply.

In unsupervised learning, the training set is of the form $\{x^{(1)},x^{(2)},\dots,x^{(m)}\}$ without labels $y^{(i)}$.

Correct 

Clustering is an example of unsupervised learning.

Correct 

In unsupervised learning, you are given an unlabeled dataset and are asked to find "structure" in the data.

Correct 

Clustering is the only unsupervised learning algorithm.

Un-selected is correct 

------

Which of the following is the recommended way to initialize k-means?

Pick a random integer ii from $\{1,\dots,k\}$. Set $\mu_1 = \mu_2 = \dots = \mu_k = x^{(i)}$.

Pick k distinct random integers $i_1, \dots, i_k$ from $\{1, …, k\}$. Set $\mu_1 = x^{(i_1)}, \mu_2 = x^{(i_2)}, \dots, \mu_k = x^{(i_k)}$.

Pick k distinct random integers $i_1, \dots, i_ki$ from $\{1, …, m\}$.Set $\mu_1 = x^{(i_1)}, \mu_2 = x^{(i_2)}, \dots, \mu_k = x^{(i_k)}$.

Correct

Set every element of $\mu_i\in\mathbb{R}^n$ to a random value between $-\epsilon$ and $\epsilon$, for some small $ \epsilon$.

------

Suppose you run k-means using k = 3 and k = 5. You find that the cost function J is much higher for k = 5 than for k = 3. What can you conclude?

This is mathematically impossible. There must be a bug in the code.

The correct number of clusters is k = 3.

In the run with k = 5, k-means got stuck in a bad local minimum. You should try re-running k-means with multiple random initializations. 

Correct

In the run with k = 3, k-means got lucky. You should try re-running k-means with k = 3 and different random initializations until it performs no better than with k = 5.