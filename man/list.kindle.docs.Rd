\name{list.kindle.docs}
\alias{list.kindle.docs}
\title{List files in a Kindle collections directory}
\description{Lists files in a directory with Kindle collections.}
\usage{list.kindle.docs(kindle_dir)}
%
\arguments{
	\item{kindle_dir}{directory where the Kindle collections are located; use single / and not \\\\ in the directory path}
}
\details{
The directory with Kindle collections has to have the following structure:
\itemize{
\item Kindle Root Dir
	\itemize{
	\item /documents
	\itemize{
		\item /Collection1
        \itemize{
			\item /document1.pdf
		} 	
      	\item /Collection2
	}
	\item /audible
	\itemize{
      	\item /Collection3
      	\item /Collection4
	}
	\item /system   	
	}
}
Collection folder names will become collection labels.
}
\value{A character vector with items in the Kindle collections directory.}
\references{}
\author{Juraj Medzihorsky}
\note{}
%
\seealso{
%	\code{\link[base:dir]{dir}}
}
\examples{}
%
\keyword{ Kindle }
%\keyword{ Collection }
%\keyword{ Collections }
