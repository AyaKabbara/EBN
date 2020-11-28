function [ trainResult,testResult,Ytrianpredict,Ytestpredict] = runModel( mdl,data,band,Xtrain,Ytrain,Xtest,Ytest,testIndex )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

Ytrianpredict=predict(mdl,Xtrain);
trainResult=assesment(Ytrianpredict,Ytrain)

%fitting the test data

Ytestpredict=predict(mdl,Xtest);
testResult=assesment(Ytestpredict,Ytest)

% plot regression prediction
figure;
plotregression(Ytest,Ytestpredict,'Regression')
title('Tested Data ');

figure;
plotregression(Ytrain,Ytrianpredict,'Regression')
title('Train Data');
% figure;fitting
% plotconfusion(round(Ytest),round(Ytestpredict))

viewPlvPredcitons(data,mdl,testIndex,band);

viewBarDestribution( Ytrain,Ytrianpredict,Ytest,Ytestpredict )


end

