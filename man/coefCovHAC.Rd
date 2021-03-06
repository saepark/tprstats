% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coefs_and_covariances.R
\name{coefCovHAC}
\alias{coefCovHAC}
\title{Coefficients Covariance Matrix (Time Series Data)}
\usage{
coefCovHAC(linmod)
}
\arguments{
\item{linmod}{The regression model.}
}
\description{
Provides coefficients of a regression model and the covariance matrix of the coefficients. The calculation of the covariance matrix corrects for possible presence of heteroskedasticity and autocorrelation using the method developed by Newey and West. This method is appropriate for time series data.
}
\section{Details}{

Let the regression model be: linmod=lm(y~x1+x2)

The function reports the 3 coefficients from the regression in the first column and the 3x3 covariance matrix of the coefficients in the next three columns.
}

