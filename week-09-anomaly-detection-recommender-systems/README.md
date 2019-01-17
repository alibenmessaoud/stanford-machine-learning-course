# Week 09

- Anomaly Detection
  - Density Estimation
  - Building an Anomaly Detection System
  - Multivariate Gaussian Distribution (Optional)
- Recommender Systems
  - Predicting Movie Ratings
  - Collaborative Filtering
  - Low Rank Matrix Factorization

------

### I. Anomaly detection 

#### 1. Density Estimation 

- Calculate probability and check if its less or greater than an arbitrary value; 
  - Fraud detection
    - Idea is to model $p(x)$ from data
    - Check $p(x) \lt \epsilon$
  - Manufacturing
    - many features
    - decrease $\epsilon$
- Gaussian Distribution
  - ~ is distributed as
  - if $x$ is Gaussian Distribution with mean $\mu$, variance $\sigma^2$
  - $\sigma$ is standard deviation 

![](./img/dens-estim.png)



![](./img/gdexm.png)



![](./img/param-estm.png) 



**Algorithm**:

![](./img/dsn-estim-p.png)



![](./img/dnst-est-algo.png) 

![](./img/anomaly-detect.png)



#### 2. Building Anomaly Detection System

![](./img/ano-detection-algo.png) 



![](./img/ano-detection-vs-superv-leanr.png) 

![](./img/ano-detection-vs-superv-leanr-apps.png) 

#### 3. Choosing What Features to Use

![](./img/feature-to-use.png)

![](./img/new-feature.png) 

### II. Recommender Systems

#### 1. Predicting Movie Ratings

![](./img/movie-sys.png)

#### 2. Content Based Recommendations

![](./img/how-to-recommend.png)

![](./img/prob-formulation-rec-syst.png)

![](./img/optim-objective.png) 

![](./img/gradient-objective.png)

#### 4. Collaborative Filtering

![](./img/problem.png)

![](./img/optz-algo.png)

![](./img/coolab-filt.png)

#### 2. Collaborative Filtering Algorithm

![](./img/collab-fil-algo-full.png)

![](./img/alg-full-additionnal.png)

#### 3. Vectorization: Low Rank Matrix Factorization

![](./img/vector-collab-filtr.png)

![](./img/find-related-movies.png)

