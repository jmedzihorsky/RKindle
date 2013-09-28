\name{hash.names}
\alias{hash.names}
%
\title{Create a vector with hashed names of collection items}
\description{Lists files in a directory with Kindle collections and hashes their names.}
\usage{hash.names(kindle_dir)}
\arguments{
	\item{kindle_dir}{directory where the Kindle collections are located; use single / and not \\\\ in the directory path}
}
%
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
\value{A character vector with hashed names of items in the collection.}
\references{}
\author{Juraj Medzihorsky}
\note{}
%
\seealso{
	\code{\link[RKindle:list.kindle.docs]{list.kindle.docs}}
%	\code{\link[SoDA:digest]{digest}}
}
%
\examples{}
%
\keyword{ Kindle }
%\keyword{ Collection }
%\keyword{ Collections }
