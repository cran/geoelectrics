% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parseProcessedDataFile.r
\name{parseProcessedDataFile}
\alias{parseProcessedDataFile}
\title{Parses a Processed Data File}
\usage{
parseProcessedDataFile(address, skip = 0)
}
\arguments{
\item{address}{address of the raw data ascii file.}

\item{skip}{the number of lines of the data file to skip before beginning to read data.}
}
\value{
list of two data frames:
The first data frame contains points without topography (distance, depth and resistivity values).
The second data frame contains points with topography (distance, height and resistivity values).
}
\description{
Parses .xyz files produced by the software Res2DInv.
Needs to be overwritten if another processed data format is used.
}
\examples{
fileAddress <- system.file('extdata/processed/p1_DipolDipol_SW-NE.xyz',
                   package = 'geoelectrics')

processedData = new('ProcessedData')
processedData@address = fileAddress
processedData@points <- parseProcessedDataFile(address = fileAddress)[[1]]
processedData@pointsWithTopo <- parseProcessedDataFile(address = fileAddress)[[2]]
}
\seealso{
\code{\link{ProcessedData-class}}, \code{\link{Profile-class}}
}
