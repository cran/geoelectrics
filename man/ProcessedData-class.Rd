% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/00Classes.r
\docType{class}
\name{ProcessedData-class}
\alias{ProcessedData-class}
\title{Processed Data Class}
\description{
A class to handle processed geoelectrics data in ascii format.
The processed data class parses .xyz files produced by the software Res2DInv.
If you want to use another format, overwrite the \code{\link{parseProcessedDataFile}} method.
}
\section{Slots}{

\describe{
\item{\code{address}}{address of the processed ascii file}

\item{\code{points}}{data frame that contains positions and values withouth topography information}

\item{\code{pointsWithTopo}}{data frame that contains positions and values with topography information}

\item{\code{height}}{data frame that contains topography information (distances and heights).
It is reconstructed from .xyz-file.}

\item{\code{minData}}{minimum value}

\item{\code{maxData}}{maximum value}
}}

\examples{
processedData = new('ProcessedData',
                     address = system.file('extdata/processed/p1_DipolDipol_SW-NE.xyz',
                     package='geoelectrics'))

data(sinkhole)
sinkhole@profiles[[1]]@processedData
sinkhole@profiles[[1]]@processedData@points
sinkhole@profiles[[1]]@processedData@pointsWithTopo
sinkhole@profiles[[1]]@processedData@height
sinkhole@profiles[[1]]@processedData@minData
sinkhole@profiles[[1]]@processedData@maxData
}
\seealso{
\code{\link{parseProcessedDataFile}}, \code{\link{Profile-class}}, \code{\link{ProfileSet-class}}
}
