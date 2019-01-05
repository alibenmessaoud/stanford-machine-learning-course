# Week 06

- Advice for Applying Machine Learning
  - Evaluating a Learning Algorithm
  - Bias vs. Variance
- Machine Learning System Design
  - Building a Spam Classifier
  - Handling Skewed Data
  - Using Large Data Sets

------

## I. Advice for Applying Machine Learning

### 1. Evaluating a Learning Algorithm

#### a. Deciding What to Try Next

- Debug a learning algorithm: Get more training examples, Try smaller features, Get additional features, Add polynomial features, Increase/ Decrease $\lambda$.
- Machine Learning diagnostic: test to run what is working/ guidance to improve/ take time to implement.

#### b. Evaluating hypothesis 

- A hypothesis may have a low error for the training examples but still be inaccurate (because of overfitting). To evaluate a hypothesis, split up the data into two sets: a **training set** as 70 % and a **test set**. 
- The new procedure using these two sets is then:
  - Learn$ \Theta$ and minimize$ J_{train}(\Theta)$ using the training set
  - Compute the test set error $J_{test}(\Theta)$
- The test set error: 
  - For linear regression: $J_{test}(\Theta) = \dfrac{1}{2m_{test}} \sum_{i=1}^{m_{test}}(h_\Theta(x^{(i)}_{test}) - y^{(i)}_{test})^2$ 
  - For classification ~ Misclassification error (aka 0/1 misclassification error):
    - $err(h_\Theta(x),y) = 1 if h_\Theta(x)≥0.5 and y=0 or h_\Theta(x)<0.5 and y=1$ 
    - $err(h_\Theta(x),y) = 0 otherwise$ 
  - This gives us a binary 0 or 1 error result based on a misclassification. The average test error for the test set is:
    - Test Error = $m_test \sum_{i=1}^{m_test}=err(h_\Theta(x_test^{(i)}), y_test^{(i)})$
    - This gives us the proportion of the test data that was misclassified.

#### c. Model Selection and Train/Validation/Test Sets

- Learning algorithm fits a training set well, 
  - It does not mean it is a good hypothesis => Could be over fit = {predictions on the test set would be poor}
  - Error of hypothesis on the data set of training will be lower than the error on any other data set.
- Given many models with different polynomial degrees, you can test each degree of polynomial and look at the error result and choose the model of your hypothesis.
- One way to break down our dataset into the three sets is:
  - Training set: 60%
  - Cross validation set: 20%
  - Test set: 20%

We can now calculate three separate error values for the three different sets using the following method:

1. Optimize the parameters in $\Theta$ using the training set for each polynomial degree.
2. Find the polynomial degree d with the least error using the cross validation set.
3. Estimate the generalization error using the test set with $J_{test}(\Theta^{(d)})$, (d = polynomial degree);

This way, the degree of the polynomial d has not been trained using the test set.

### Bias vs. Variance

#### a. Diagnosing Bias vs. Variance


