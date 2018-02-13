%% Initialization
clear ; close all; clc

%% ==================== Part 1: Packets processing ====================

load('train_small.mat');
%load('train_4k_model.mat');
X = featureNormalize(X);
%load('cross_validation_medium_random.mat');
%[C, sigma] = dataset3Params(X, Y, Xval, yval);
%pause;
%plotData (X,Y);
pause;
%% =========== Part 2: Train Linear SVM for Packet Classification ========
%  In this section, you will train a linear classifier to determine if a
%  packet is malicious or not

fprintf('\nTraining Linear SVM (Packet Classification)\n')
fprintf('(this may take 1 to 2 minutes) ...\n')
C = 1;
model = svmTrain(X, Y, C, @linearKernel);

p = svmPredict(model, X);

fprintf('Training Accuracy: %f\n', mean(double(p == Y)) * 100);

%% =================== Part 3: Test anomaly Classification ================
%  After training the classifier, we can evaluate it on a test set. We have
%  included a test set in 

% Load the test dataset
% You will have Xtest, ytest in your environment

load('test_1k.mat');
X_test = featureNormalize(X_test);
fprintf('\nEvaluating the trained Linear SVM on a test set ...\n')

p = svmPredict(model, X_test);

fprintf('Test Accuracy: %f\n', mean(double(p == Y_test)) * 100);
pause;


