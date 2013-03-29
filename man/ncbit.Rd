\name{ncbit}
\alias{ncbit}
\alias{ncbi}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
retrieve and build NBCI taxonomic data}
\description{
making accessible the NCBI taxonomic data}
\usage{
ncbit(update = FALSE, \dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{update}{whether to update database or to use the locally installed version}
  \item{...}{additional arguments to be used if \code{update=TRUE})}
}
\details{
This function will return a dataframe of the NCBI taxonomy, using either a freshly updated version (if \code{update=TRUE}) or a loaded version of the locally installed version. An internet connection must be functional and several utilities must be available and if updating the database: \bold{curl}, \bold{gunzip}, \bold{tar}, \bold{perl}, \bold{mv}, and possibly \bold{rm}. If any of the required utilities are unavailable, the function will issue an error.  If updating the database, the database will be assembled in the \code{data} directory of the \pkg{ncbit} package and temporary files will be removed in the process.  The removal of temporary files can be prevented with \code{rm=FALSE} in the call to \code{ncbit}.}
\value{
A dataframe of class 'taxdump' is returned with the following elements:
    \item{\bold{id}}{a unique integer associated with the node}
    \item{\bold{node}}{a string descriptor of the node}
    \item{\bold{unique}}{a string describing the node}
    \item{\bold{type}}{the type of datum (e.g., scientific name, common name, synonym, etc.)}
    \item{\bold{parent_id}}{a unique integer associated with the parent node}
}
\references{
\url{http://www.ncbi.nlm.nih.gov/Taxonomy/taxonomyhome.html}

Sayers EW, T Barrett, DA Benson, SH Bryant, K Canese, V Chetvernin, DM Church, M DiCuccio, R Edgar, S Federhen, M Feolo, LY Geer, M Hlemberg, Y Kapustin, D Landsman, DJ Lipman, TL Madden, DR Maglott, V Miller, I Mizrachi, J Ostell, KD Pruitt, GD Schuler, E Sequeira, ST Sherry, M Shumway, K Sirotkin, A Souvorov, G Starchenko, TA Tatusova, L Wagner, E yaschenko, and J Ye. 2009. Database resources of the National Center for Biotechnology Information. \emph{Nucleic Acids Research} 37:D5-15.
   
Benson DA, I Karsch-Mizrachi, DJ Lipman, J Ostell, and EW Sayers. 2009. GenBank. \emph{Nucleic Acids Research} 37:D26-31.
}

\examples{
ncbi=get(data(ncbi))
print(ncbi)
}
\keyword{data}
\keyword{datasets}
