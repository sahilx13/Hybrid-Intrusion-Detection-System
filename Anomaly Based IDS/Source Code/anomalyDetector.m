function out = anomalyDetector( X )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
load('train_4k_model.mat');
out = svmPredict(model, X);

end

