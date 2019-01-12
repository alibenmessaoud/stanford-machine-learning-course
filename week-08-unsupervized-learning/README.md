# Week 08

- Unsupervised Learning
  - Clustering
  - Dimensionality Reduction 

------

### I. Clustering

#### 1. Unsupervised learning

- Clustering

#### 2. K-Means Algorithm

Init clustering with 2 points or clutser centroids to group data around them.

Algorithm:

- Input: 
  - K number of clusters
  - Training set $\{x^{(1)},x^{(2)},\dots,x^{(m)}\}$; $x_0 = 1$
- Init K cluster centroids $u_1, u_2, ... u_K$
- Repeat : {
  - for i = 1 to $m$
    - $c^{(i)} := index (\text{ from 1 to K }) \text{ of centroid closest to } x^{(i)}$ $\Rightarrow min_k || x^{(i)} - u_k||$ 
  - for k: 1 to $K$
    - $u_k := \text{average of points assigned to cluster k}$
- }

#### 3. Optimization

First loop is the optimization objective $J(..)$ 

$c^{(i)}$ = index of cluster (1, .. K) to which example $x^{(i)}$ is currently assigned

$u_k$ = cluster centroid $k$

$u_{c^{(i)}}$ = cluster centroid of cluster to which example $x^{(i)}$ has been assigned

$J(c^{(1)}, .. , c^{(m)}, u_1, .. , u_k) = 1/m \sum^{m}_{i=1} || x^{(i)} - u_{c^{(i)}} ||²$ $= min_{c^{(1)}, .. , c^{(m)}, u_1, .. , u_k} J(c^{(1)}, .. , c^{(m)}, u_1, .. , u_k) $

