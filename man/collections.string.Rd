\name{collections.string}
\alias{collections.string}
%
\title{Create a string with a Kindle collections object}
\description{Returns a string containing a JSON object with the collections.}
\usage{collections.string(kindle_dir, lang='en-US')}
\arguments{
	\item{kindle_dir}{directory where the Kindle collections are located; use single / and not \\\\ in the directory path}
	\item{lang}{language, default 'en-US'}
}
%
\details{
The directory with Kindle collections must have the following structure:
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
\value{A string containing the JSON object with the collections.}
\references{}
\author{Juraj Medzihorsky}
\note{}
%
\seealso{
	\code{\link[RKindle:collections]{collections}}
%	\code{\link[rjson:toJSON]{toJSON}}
%	\code{\link[RKindle:hash.names]{hash.names}}
}
\examples{}
%
\keyword{ Kindle }
%\keyword{ Collection }
%\keyword{ Collections }

