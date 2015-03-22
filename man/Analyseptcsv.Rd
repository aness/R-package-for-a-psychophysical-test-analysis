\name{Analyseptcsv}
\alias{Analyseptcsv}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Analysing the BCI visual P300 psychophysical data and processing results
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
analyse(file) returns a confusion matrix where all the lines are the instructed targets and the columns represent the visual stimuli. 
The function also returns a response time plot
}
\usage{
analyse(file)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{
%%     ~~Describe \code{file} here~~
file is the csv file containing the experimental results. The results are organized in 4 columns : the stimulus, the target, the user key response and the response time. 
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
This work is useful when creating new brain computer interfaces and before doing the EEG experiments. The function does return a confusion matrix where the contradiagonal line should contain all information. If not the experimental setup may be wrong. The user response must be all 
}
\value{


%%  ~Describe the value returned
%%  If it is a LIST, use
 \item{cm }{analyse returns a confusion matrix 'cm' where result are of type float}
  \item{rt }{analyse returns a box plot for the user response time where result are of type float}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
%%##---- Should be DIRECTLY executable !! ----
%%##-- ==>  Define data, use random,
%%##--	or do  help(data=index)  for the standard data sets.

%%## The function is currently defined as
Analyseptcsv ("result.csv") 
%%{
%% }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ psychophysical }
\keyword{ BCI }
\keyword{ P300 }
\keyword{ Confusion }
\keyword{ matrix }
\keyword{ response }
\keyword{ time }
\keyword{ plot }
