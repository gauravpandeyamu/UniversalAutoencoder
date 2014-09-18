function [ pc ] = pca( data, numDims )
%This code is taken from http://www.nlpca.org/pca-principal-component-analysis-matlab.html
%UNTITLED18 Summary of this function goes here
%   Detailed explanation goes here

% remove the mean variable-wise (row-wise)
    data=data-repmat(mean(data,1),size(data,1),1);

% calculate eigenvectors (loadings) W, and eigenvalues of the covariance matrix
    [W, EvalueMatrix] = eig(cov(data));
    Evalues = diag(EvalueMatrix);

% order by largest eigenvalue
    Evalues = Evalues(end:-1:1);
    W = W(:,end:-1:1);
    W = W(:,1:numDims);

% generate PCA component space (PCA scores)
    pc = data*W;

     

end

