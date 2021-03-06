% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/code_tables.R
\name{nmdp_table}
\alias{nmdp_table}
\title{Class: nmdp_tbl}
\source{
\href{https://bioinformatics.bethematchclinical.org/HLA-Resources/Allele-Codes/Allele-Code-Lists/Allele-Code-List-in-Numerical-Order/}{NMDP}
}
\usage{
nmdp_table()
}
\value{
A \link{tibble} of mappings between NMDP codes and allelic subtypes with the fields:
\itemize{
\item "code": An NMDP code.
\item "subtype": The '/'-separated subtypes into which an NMDP code expands.
}
}
\description{
Constructor for an <\code{nmdp_tbl}> object.
}
\examples{
\dontrun{
nmdp_codes <- nmdp_table()
}
}
\seealso{
\link{g_table}, \link{allele_table}
}
