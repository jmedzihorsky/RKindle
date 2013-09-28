\name{collections}
\alias{collections}
%
\title{Create a Kindle collections file}
%
\description{Returns a JSON file with Kindle collections.}
%
\usage{
collections(kindle_dir, file_name='collections', lang='en-US')
}
\arguments{ 
	\item{kindle_dir}{directory where the Kindle collections are located; use single / and not \\\\ in the directory path}
	\item{file_name}{name of the JSON file, default 'collections'}
	\item{lang}{language, default 'en-US'}
}
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
\value{
A JSON file saved in the `system' subfolder of the specified collection directory.
}
\references{}
\author{Juraj Medzihorsky}
\note{}
%
\seealso{
	\code{\link[RKindle:collections.string]{collections.string}}
%	\code{\link[rjson:toJSON]{toJSON}}
%	\code{\link[RKindle:hash.names]{hash.names}}
}
\examples{}
%
\keyword{ Kindle }
\keyword{ Collection }
\keyword{ Collections }
