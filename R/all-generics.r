#' @include utils.r
NULL

#' Get or set sequence data
#'
#' @param x A \code{\link{HLAGene}} or \code{\linkS4class{HLAAllele}} object.
#' @param ... Further arguments passed to methods.
#'
#' @return A DNAStringSet object.
#' @export
#' @examples
#' \dontrun{
#' x <- HLAGene("DPB1")
#' sequences(x[is_complete(x)])
#' }
setGeneric("sequences", signature = "x", function(x, ...) standardGeneric("sequences"))
#' @param value A \code{DNAStringSet} object.
#' @rdname sequences
setGeneric("sequences<-", signature = "x", function(x, ..., value) standardGeneric("sequences<-"))

#' Get or set feature data
#'
#' @param x A \code{\link{HLAGene}} or \code{\linkS4class{HLAAllele}} object.
#' @param ... Further arguments passed to methods.
#'
#' @return A HLAFeatureList object.
#' @export
#' @examples
#' \dontrun{
#' x <- HLAGene("DPB1")
#' features(x[is_complete(x)])
#' }
setGeneric("features", signature = "x", function(x, ...) standardGeneric("features"))
#' @param value A \code{HLAFeatureList} object.
#' @rdname features
setGeneric("features<-", signature = "x", function(x, ..., value) standardGeneric("features<-"))

#' Access allele IDs
#'
#' @param x A \code{\link{HLAGene}} or \code{\linkS4class{HLAAllele}} object.
#' @param ... Further arguments passed to methods.
#'
#' @return A character vector of allele IDs.
#' @export
#' @examples
#' \dontrun{
#' x <- HLAGene("DPB1")
#' allele_id(x[is_complete(x)])
#' }
setGeneric("allele_id", signature = "x", function(x, ...) standardGeneric("allele_id"))

#' Access allele names
#'
#' @param x A \code{\link{HLAGene}} or \code{\linkS4class{HLAAllele}} object.
#' @param ... Further arguments passed to methods.
#'
#' @return A character vector of allele names.
#' @export
#' @examples
#' \dontrun{
#' x <- HLAGene("DPB1")
#' allele_name(x[is_complete(x)])
#' }
setGeneric("allele_name", signature = "x", function(x, ...) standardGeneric("allele_name"))

#' Access G group designations
#'
#' @param x A \code{\link{HLAGene}} or \code{\linkS4class{HLAAllele}} object.
#' @param ... Further arguments passed to methods.
#'
#' @return A character vector of allele names.
#' @export
#' @examples
#' \dontrun{
#' x <- HLAGene("DPB1")
#' g_group(x[is_complete(x)])
#' }
setGeneric("g_group", signature = "x", function(x, ...) standardGeneric("g_group"))

#' Access P group designations
#'
#' @param x A \code{\link{HLAGene}} or \code{\linkS4class{HLAAllele}} object.
#' @param ... Further arguments passed to methods.
#'
#' @return A character vector of allele names.
#' @export
#' @examples
#' \dontrun{
#' x <- HLAGene("DPB1")
#' p_group(x[is_complete(x)])
#' }
setGeneric("p_group", signature = "x", function(x, ...) standardGeneric("p_group"))

#' Access CWD status
#'
#' @param x A \code{\link{HLAGene}} or \code{\linkS4class{HLAAllele}} object.
#' @param ... Further arguments passed to methods.
#'
#' @return A character vector of CWD status codes.
#' @export
#' @examples
#' \dontrun{
#' x <- HLAGene("DPB1")
#' cwd_status(x[is_complete(x)])
#' }
setGeneric("cwd_status", signature = "x", function(x, ...) standardGeneric("cwd_status"))

#' Access ethnicity status
#'
#' @param x A \code{\link{HLAGene}} or \code{\linkS4class{HLAAllele}} object.
#' @param ... Further arguments passed to methods.
#'
#' @return A character vector of colon-separated sample ethnicities.
#' @export
#' @examples
#' \dontrun{
#' x <- HLAGene("DPB1")
#' ethnicity(x[is_complete(x)])
#' }
setGeneric("ethnicity", signature = "x", function(x, ...) standardGeneric("ethnicity"))

#' Access (colon-separated) sample names
#'
#' @param x A \code{\link{HLAGene}} or \code{\linkS4class{HLAAllele}} object.
#' @param ... Further arguments passed to methods.
#'
#' @return A character vector of colon-separated sample ethnicities.
#' @export
#' @examples
#' \dontrun{
#' x <- HLAGene("DPB1")
#' sample_name(x[is_complete(x)])
#' }
setGeneric("sample_name", signature = "x", function(x, ...) standardGeneric("sample_name"))

#' Access completeness status
#'
#' @param x A \code{\link{HLAGene}} or \code{\linkS4class{HLAAllele}} object.
#' @param ... Further arguments passed to methods.
#'
#' @return A logical vector.
#' @export
#' @examples
#' \dontrun{
#' x <- HLAGene("DPB1")
#' x[is_complete(x)]
#' }
setGeneric("is_complete", signature = "x", function(x, ...) standardGeneric("is_complete"))

#' Has a sequence been submitted by DKMS Life Science Lab
#'
#' @param x A \code{\link{HLAGene}} or \code{\linkS4class{HLAAllele}} object.
#' @param ... Further arguments passed to methods.
#'
#' @return A logical vector.
#' @export
#' @examples
#' \dontrun{
#' x <- HLAGene("DPB1")
#' x[is_lsl(x) & is_complete(x)]
#' }
setGeneric("is_lsl", signature = "x", function(x, ...) standardGeneric("is_lsl"))

#' Access locus name
#'
#' @param x A \code{\link{HLAGene}} object.
#' @param ... Further arguments passed to methods.
#'
#' @return A character vector.
#' @export
#' @examples
#' \dontrun{
#' x <- HLAGene("DPB1")
#' locusname(x)
#' }
setGeneric("locusname", signature = "x", function(x, ...) standardGeneric("locusname"))
#' @param value A valid HLA locus name or \code{NA}.
#' @rdname locusname
setGeneric("locusname<-", signature = "x", function(x, ..., value) standardGeneric("locusname<-"))

#' Retrieve exon sequences
#'
#' @param x A \code{\link{HLAGene}} object.
#' @param exon The feature number or \code{NULL} (Retrieves all exons).
#' @param ... Further arguments passed to methods.
#'
#' @return A \code{\linkS4class{DNAStringSet}}.
#' @export
#' @examples
#' \dontrun{
#' x <- HLAGene("DPB1")
#' exon(x, 2)
#' }
setGeneric("exon", signature = "x", function(x, exon = NULL, ...) standardGeneric("exon"))

#' Retrieve intron sequences
#'
#' @param x A \code{\link{HLAGene}} object.
#' @param intron The feature number or \code{NULL} (Retrieves all introns).
#' @param ... Further arguments passed to methods.
#'
#' @return A \code{\linkS4class{DNAStringSet}}.
#' @export
#' @examples
#' \dontrun{
#' x <- HLAGene("DPB1")
#' intron(x, 1:2)
#' }
setGeneric("intron", signature = "x", function(x, intron = NULL, ...) standardGeneric("intron"))

#' Retrieve UTR sequences
#'
#' @param x A \code{\link{HLAGene}} object.
#' @param utr The feature number or \code{NULL} (Retrieves all UTRs).
#' @param ... Further arguments passed to methods.
#'
#' @return A \code{\linkS4class{DNAStringSet}}.
#' @export
#' @examples
#' \dontrun{
#' x <- HLAGene("DPB1")
#' utr(x, 1)
#' }
setGeneric("utr", signature = "x", function(x, utr = NULL, ...) standardGeneric("utr"))

#' Get IPD-IMGT/HLA database version
#'
#' @param x A \code{\link{HLAGene}} object.
#' @param ... Further arguments passed to methods.
#'
#' @return A character vector.
#' @export
#' @examples
#' \dontrun{
#' x <- HLAGene("DPB1")
#' db_version(x)
#' }
db_version <- function(x, ...) UseMethod("db_version")

### -------------------------------------------------------------------------
### HLARanges class
###

#' Get feature id
#'
#' @param x A \code{\linkS4class{HLARanges}} object.
#' @param ... Further arguments passed to methods.
#'
#' @return A character vector.
#' @export
#' @examples
#' ##
setGeneric("getId", signature = "x", function(x, ...) standardGeneric("getId"))

#' Get feature order
#'
#' @param x A \code{\linkS4class{HLARanges}} object.
#' @param ... Further arguments passed to methods.
#'
#' @return An integer vector.
#' @export
#' @examples
#' ##
setGeneric("getOrder", signature = "x", function(x, ...) standardGeneric("getOrder"))

#' Get feature type
#'
#' @param x A \code{\linkS4class{HLARanges}} object.
#' @param ... Further arguments passed to methods.
#'
#' @return A character vector.
#' @export
#' @examples
#' ##
setGeneric("getType", signature = "x", function(x, ...) standardGeneric("getType"))

#' Get feature status
#'
#' @param x A \code{\linkS4class{HLARanges}} object.
#' @param ... Further arguments passed to methods.
#'
#' @return A character vector.
#' @export
#' @examples
#' ##
setGeneric("getStatus", signature = "x", function(x, ...) standardGeneric("getStatus"))

#' Get feature reading frame
#'
#' @param x A \code{\linkS4class{HLARanges}} object.
#' @param ... Further arguments passed to methods.
#'
#' @return An integer vector.
#' @export
#' @examples
#' ##
setGeneric("getFrame", signature = "x", function(x, ...) standardGeneric("getFrame"))

